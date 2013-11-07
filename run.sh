if [ ! -n "$WERCKER_LOCALE_LOCALE" ]; then
    error "Please specify locale property (e.g. en_US)"
    exit 1
fi

if [ ! -n "$WERCKER_LOCALE_CHARSET" ]; then
    error "Please specify charset property (e.g. ISO-8859-1)"
    exit 1
fi

input=`expr match "$WERCKER_LOCALE_LOCALE" '\(^[^\.]\+\)'`

localedef -i $input -c -f $WERCKER_LOCALE_CHARSET -A /usr/share/locale/locale.alias $WERCKER_LOCALE_LOCALE
