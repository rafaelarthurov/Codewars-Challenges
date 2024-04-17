With Filtering_CTE as (
  select 
    SUBSTRING(path from 21) as NewPath
  from directories
  where path like '/home/user/pictures/%'
    and length(path) > length('/home/user/pictures/')

), Trimming_CTE as (
  select distinct
    coalesce(
      case
        when position ('/' in NewPath) > 0
        then split_part(NewPath, '/', 1)
        else NewPath
      end, '') as subdirectory
  from Filtering_CTE
)
select 
  subdirectory
from Trimming_CTE T_CTE
where T_CTE.subdirectory is not null;