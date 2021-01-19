class Manifest
    def initialize(sources, modules, source_path, output_path, intermediate_directory, output_type, output_platform, icon_path, resource_path, application_version, compiler_version)
        @sources = sources
        @modules = modules
        @source_path = source_path
        @output_path = output_path
        @intermediate_directory = intermediate_directory
        @output_type = output_type
        @output_platform = output_platform
        @icon_path = icon_path
        @resource_path = resource_path
        @application_version = application_version
        @compiler_version = compiler_version
    end
end
