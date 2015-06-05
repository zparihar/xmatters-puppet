class django::packages {
        $required_packages = [
                "python",
        ]

        package { $required_packages:
                ensure  => latest,
        }
}

