-- 627. Swap Sex of Employees

update Salary
set sex = (
    case sex
    when 'm' then 'f'
    else 'm'
    end
)