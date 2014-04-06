import com.guendabiaani.seguridad.*


class BootStrap {

	def springSecurityService
	def grailsApplication
	def init = { servletContext ->
		development {

	
		/*	def userRole = Rol.findByAuthority('ROLE_USER') ?: new Rol(authority: 'ROLE_USER').save(failOnError: true)
			def adminRole = Rol.findByAuthority('ROLE_ADMIN') ?: new Rol(authority: 'ROLE_ADMIN').save(failOnError: true)

			def usuario = Usuario.findByUsername('usuario') ?: new Usuario(
					username: 'usuario',
					password:'temporal.',
					enabled: true).save(failOnError: true)


			if (!usuario.authorities.contains(userRole)) {
				UsuarioRol.create usuario, userRole
			}

			
			
			def admin = Usuario.findByUsername('admin') ?: new Usuario(
				username: 'admin',
				password:'admin',
				enabled: true).save(failOnError: true)


			if (!admin.authorities.contains(userRole)) {
				UsuarioRol.create admin, userRole
			}
	
			if (!admin.authorities.contains(adminRole)) {
				UsuarioRol.create admin, adminRole
			}
			*/	
			
		}
	}

	
    def destroy = {
    }
}