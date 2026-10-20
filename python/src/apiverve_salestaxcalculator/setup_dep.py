from setuptools import setup, find_packages

setup(
    name='apiverve_salestaxcalculator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sales Tax Calculator is a US sales tax API that computes the exact sales tax amount and combined rate for purchases in any US state or ZIP code. Paid plans add breakdowns by state, county, city, and special district rates.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/salestaxcalculator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
