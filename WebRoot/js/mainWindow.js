function MM_jumpMenu(targ,selObj,restore)
{  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'"); 
if (restore) selObj.selectedIndex=0;
}
function qiemenu()
{
	var a=document.getElementById("carrier");
	a.src="img/yixing.jpg";
}
function backmenu()
{
	var a=document.getElementById("carrier");
	a.src="img/";
}
function qiemenu2()
{
	var a=document.getElementById("carrier");
	a.src="img/yj.jpg";
}
function qiemenu3()
{
	var a=document.getElementById("carrier");
	a.src="img/mls.jpg";
}
function qiemenu4()
{
	var a=document.getElementById("carrier");
	a.src="img/yixing.jpg";
}
function big(i){
	var a=document.getElementById("big"+i);
	a.className='front3';
	var b=document.getElementById("bi"+i);
	b.className='front5';
}
function small(i){
	var a=document.getElementById("big"+i);
	a.className='front2';
	var b=document.getElementById("bi"+i);
	b.className='front4';

}
//JavaScript Document