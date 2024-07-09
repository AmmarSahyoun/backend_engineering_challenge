create DATABASE if not exists marketing_db;
use marketing_db;

-- Network usually has the most active users on a daily basis
create TABLE if not exists most_active_networks (
    date date not null,
    network varchar(255) not null,
    max_dau int not null,
    primary key (date_dt, network)
);

-- Network usually has the best ratio 
create TABLE if not exists best_conversion_network (
    date date not null,
    network varchar(255) not null,
    conversion_rate float not null,
    primary key (date_dt, network)
);