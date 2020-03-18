select b.last_name||', '||b.first_name batter
, so, bb, ibb, hbp, b1, b2, b3, hr
, ab, sf, pa
from (select e.resp_bat_id
    , e.event_cd
    from event_2019 e
    where e.bat_event_fl = 'T'
    and substr(e.game_id,4,4) = 2019
) pivot (
    count(event_cd)
    for event_cd in ('3' so, '14' bb, '15' ibb, '16' hbp, '20' b1,'21' b2,'22' b3,'23' hr)
) e
join (select e.resp_bat_id
    , sum(case e.ab_fl when 'T' then 1 else 0 end) ab
    , sum(case e.sf_fl when 'T' then 1 else 0 end) sf
    , sum(case e.bat_event_fl when 'T' then 1 else 0 end) pa
    from event_2019 e
    where e.bat_event_fl = 'T'
    and substr(e.game_id,4,4) = 2019
    group by e.resp_bat_id
) e2
on e.resp_bat_id = e2.resp_bat_id
join xt_person b
on e.resp_bat_id = b.person_id
;