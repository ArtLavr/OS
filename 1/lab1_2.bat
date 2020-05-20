for %%A IN (*) DO (
    cls
    echo.%%A:
    echo.
    type "%%A" | more
    pause
)
pause

exit