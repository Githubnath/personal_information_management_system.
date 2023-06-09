-- ======================================================================
-- @file	Unset URL
-- @brief	Unset the URL field value of select records
-- @author	Emenike Nathaniel  <emenike.nathaniel@gmail.com>
-- @license MIT license; please see the file LICENSE in the repo
-- @repo        https://github.com/Githubnath/personal_management_system_
-- ======================================================================

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application id "DNtp"
	try
		repeat with _record in (selected records)
			set URL of _record to ""
		end repeat
	on error msg number code
		if the code is not -128 then
			display alert "Unset URL" message msg as warning
		end if
	end try
end tell
