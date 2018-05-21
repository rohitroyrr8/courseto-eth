pragma solidity ^0.4.18;

contract Coursetro {
    
    string  fname ;
    uint  age ;
    address owner;
    
    function Coursetro() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    event Instructor(string fname, uint age);   
    
    function setInstructor(string _fname, uint _age) onlyOwner public {
        age = _age;
        fname = _fname;
        
        Instructor(_fname, _age);
    }
    
    function getInstructor() public constant returns (string, uint){
      return (fname, age);
        
    }
    
}