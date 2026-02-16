from setuptools import setup, find_packages

setup(
    name='apiverve_salestaxcalculator',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sales Tax Calculator computes the exact sales tax amount for purchases in any US state or ZIP code. Get accurate tax calculations with breakdowns by state, county, city, and special district rates.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/salestaxcalculator?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
