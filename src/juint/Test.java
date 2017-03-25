package juint;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hdu.entities.Activity;
import com.hdu.service.ActivityService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class Test {
	private ActivityService activityService;
	
	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}

	@org.junit.Test
	public void testQueryAll(){

	}

	@org.junit.Test
	public void testqueryByAcSchool(){

	}

	@org.junit.Test
	public void testqueryByMoney(){

	}
}
