abstract type AbstractMS end
abstract type AbstractTandemMS <: AbstractMS end

Base.isless(a::AbstractMS, b::AbstractMS) = a.id < b.id

Base.@kwdef struct MS1 <: AbstractMS
    type::Symbol = :MS1
    id::Int = 0
    total_ion_current::Float64 = 0.0
    base_peak_intensity::Float64 = 0.0
    base_peak_mass::Float64 = 0.0
    retention_time::Float64 = 0.0
    injection_time::Float64 = 0.0
    peaks::Vector{<:AbstractPeak} = Peak[]
end

Base.@kwdef struct MS2 <: AbstractTandemMS
    type::Symbol = :MS2
    id::Int = 0
    pre::Int = 0
    total_ion_current::Float64 = 0.0
    base_peak_intensity::Float64 = 0.0
    base_peak_mass::Float64 = 0.0
    retention_time::Float64 = 0.0
    injection_time::Float64 = 0.0
    activation_center::Float64 = 0.0
    isolation_width::Float64 = 0.0
    ions::Vector{<:AbstractIon} = Ion[]
    peaks::Vector{<:AbstractPeak} = Peak[]
end

Base.show(io::IO, m::MS1) = begin
    write(io, "$(m.type)#$(m.id)(\
        RT=$(round(m.retention_time; digits=2)), \
        IT=$(round(m.injection_time; digits=2)), \
        TIC=$(round(m.total_ion_current; digits=2)), \
        BPI=$(round(m.base_peak_intensity; digits=2)), \
        BPM=$(round(m.base_peak_mass; digits=2)), \
        #P=$(length(m.peaks)))"
    )
    return nothing
end

Base.show(io::IO, m::MS2) = begin
    write(io, "$(m.type)#$(m.id)(\
        #$(m.pre)@$(round(m.activation_center; digits=4))±$(round(m.isolation_width/2; digits=2)), \
        [$(join(string.(m.ions), ','))], \
        RT=$(round(m.retention_time; digits=2)), \
        IT=$(round(m.injection_time; digits=2)), \
        TIC=$(round(m.total_ion_current; digits=2)), \
        BPI=$(round(m.base_peak_intensity; digits=2)), \
        BPM=$(round(m.base_peak_mass; digits=2)), \
        #P=$(length(m.peaks)))"
    )
    return nothing
end

dict_by_id(M::AbstractArray{<:AbstractMS}) = Dict([m.id => m for m in M])

read_ms(path; MS1=true, MS2=true, verbose=true) = begin
    if endswith(lowercase(path), ".mes")
        return read_mes(path; verbose)
    elseif endswith(lowercase(path), ".ms1") || endswith(lowercase(path), ".ms2")
        MS = (;)
        if MS1 MS = (; MS..., MS1=read_ms1(splitext(path)[1] * ".ms1"; verbose)) end
        if MS2 MS = (; MS..., MS2=read_ms2(splitext(path)[1] * ".ms2"; verbose)) end
        return MS
    else
        error("unknown MS file type: " * path)
    end
end
