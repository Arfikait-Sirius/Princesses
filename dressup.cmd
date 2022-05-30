@ECHO OFF

SET DIR_PRINCESSES=%1

IF NOT EXIST %DIR_PRINCESSES%\Princesses\ (
     MKDIR %DIR_PRINCESSES%\Princesses
     COPY .\dir_Modules\Princesses.ads %DIR_PRINCESSES%\. > NUL
)

COPY .\dir_Girls\Emily\* %DIR_PRINCESSES%\Princesses\. > NUL
COPY .\dir_Girls\Louise\* %DIR_PRINCESSES%\Princesses\. > NUL

ECHO "Completed!"
