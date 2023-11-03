for inp in `cat lists/default`
do
    echo -n "$inp"
    grep -i '^*STATIC' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " STATIC"
    fi
    grep -i '^*BUCKLE' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " BACKLE"
    fi
    grep -i '^*FREQUENCY' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " FREQUENCY"
    fi
    grep -i '^*DYNAMIC' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " DYNAMIC"
    fi
    grep -i '^*MODAL DYNBAMIC' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " MODALDYNBAMIC"
    fi
    grep -i '^*STEADY STATE DYNAMIC' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " STEADYSTATEDYNAMIC"
    fi
    grep -i '^*HEAT TRANSFER' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " HEATTRANSFER"
    fi
    grep -i '^*COUPLED TEMPERATURE-DISPLACEMENT' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " COUPLEDTEMPERATUREDISPLACEMENT"
    fi
    grep -i '^*UNCOUPLED TEMPERATURE-DISPLACEMENT' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " UNCOUPLEDTEMPERATUREDISPLACEMENT"
    fi
    grep -i '^*ELECTROMAGNETICS' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " ELECTROMAGNETICS"
    fi
    grep -i '^*GREEN' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " GREEN"
    fi
    grep -i '^*SUBSTRUCTURE GENERATE' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " SUBSTRUCTUREGENERATE"
    fi
    grep -i '^*VISCO' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " VISCO"
    fi
    grep -i '^*NO ANALYSIS' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " NOANALYSIS"
    fi
    grep -i '^*ROBUST DESIGN' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " ROBUSTDESIGN"
    fi
    grep -i '^*CFD' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " CFD"
    fi
    grep -i '^*CRACK PROPAGATION' ../test/$inp > /dev/null
    if [ $? -eq 0 ]; then
        echo -n " CRACKPROPAGATION"
    fi
    echo
done
