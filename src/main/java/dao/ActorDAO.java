package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Actor;


public class ActorDAO extends DBconnect{
	public List<Actor> getAll(){
		List<Actor> actors = new ArrayList<Actor>();

		String sql ="select * from actor ";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Actor actor = new Actor(rs.getInt(1), 
						rs.getString(2),
						rs.getInt(3),
						rs.getInt(4),
						rs.getString(5));				
				actors.add(actor);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return actors;
	}
	
	
	public Actor getById(int id) {
		String sql = "SELECT * FROM actor WHERE actorid=?";		
		try {
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				Actor actor = new Actor(rs.getInt(1), 
						rs.getString(2),
						rs.getInt(3),
						rs.getInt(4),
						rs.getString(5));								
			
				return actor;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
public void insert(Actor actor) {
		
		String sql = "INSERT INTO actor(actorname,age,height,nationality) VALUES(?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, actor.getActorName());
			pst.setInt(2, actor.getAge());
			pst.setInt(3, actor.getHeight());
			pst.setString(4, actor.getNationality());

			
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

public void update(Actor actor) {
	String sql = "UPDATE actor SET actorname=? ,age=? ,height=? ,nationality=? WHERE actorid=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, actor.getActorName());
		pst.setInt(2, actor.getAge());
		pst.setInt(3, actor.getHeight());
		pst.setString(4, actor.getNationality());
		pst.setInt(5, actor.getActorId());
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public void delete(int id) {
	String sql = "DELETE FROM actor WHERE actorid=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setInt(1, id);
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
}
