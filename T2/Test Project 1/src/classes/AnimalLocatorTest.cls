@isTest
public class AnimalLocatorTest {
    @isTest static void testPostCalloutAnimalLocator() {
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    string response = AnimalLocator.getAnimalNameById(1);        
    System.assertEquals('chicken', response);
}

}