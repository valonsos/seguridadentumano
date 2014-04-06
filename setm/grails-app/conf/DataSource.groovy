hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
	  dataSource {
	  loggingSql = true
			pooled = false
			driverClassName = "org.postgresql.Driver"
			username = "postgres"
			password = "admin"
			url = "jdbc:postgresql://10.8.0.89:5432/seguridad"
	 		dbCreate = "update"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
		}
	}
	production {
	  dataSource {
	  loggingSql = false
	  pooled = false
	  driverClassName = "org.postgresql.Driver"
	  username = "postgres"
	  password = "t3st3r"
		url = "jdbc:postgresql://localhost:5432/seguridad"
	  dbCreate = "update"
	  }
	}
}
