select pok_name from pokemon;

select pok_name from pokemon order by pok_name desc;

select abil_name from abilities a 
join pokemon_abilities pa on pa.abil_id = a.abil_id 
join pokemon p on p.pok_id = pa.pok_id 
where p.pok_name = 'charizard';

select pok_name from pokemon where pok_name like '%chu%';

select pok_name from pokemon p 
join pokemon_abilities pa on p.pok_id = pa.pok_id 
join abilities a on pa.abil_id = a.abil_id 
where a.abil_name = 'lightning-rod';

select pok_name from pokemon p 
join pokemon_abilities pa on p.pok_id = pa.pok_id 
join abilities a on pa.abil_id = a.abil_id 
where a.abil_name = 'lightning-rod' and p.pok_name like '%chu%';

select pok_name from pokemon p 
join pokemon_types pt on pt.pok_id = p.pok_id 
join types t on t.type_id = pt.type_id 
where t.type_name = 'fire';

select b_hp, b_atk, b_def, b_sp_atk, b_sp_def, b_speed from base_stats bs 
join pokemon p on p.pok_id = bs.pok_id 
where p.pok_name = 'charizard';

select pok_name from pokemon p 
join pokemon_abilities pa on p.pok_id = pa.pok_id 
join abilities a on pa.abil_id = a.abil_id
join pokemon_types pt on pt.pok_id = p.pok_id
join types t on t.type_id = pt.type_id
where a.abil_name = 'lightning-rod' and t.type_name = 'electric';