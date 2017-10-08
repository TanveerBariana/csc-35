title lab3	(lab3.asm)
.model small
.stack 100h
.data 
	Y dw ?
	msg db "Sum is: "
	Sum dw ?
	db "W is: "
	W dw ?
	db '$'
ax=y, cx=sum
.code
main proc
	mov ax,@data
	mov dx,ax
	mov ax,2000
	dec ax
	mov y,ax
	mov bx,4
	add cx,36
	add cx,y
	mov dx,0
	div bx
	add cx,ax
	mov dx,0
	mov ax,y
	mov bx,100
	div bx
	mov dx,0
	add cx,ax
	mov sum,cx
	mov ax,sum
	mov bx,7
	div bx
	inc dx
	mov w,dx
	
	mov ax,4c00h
	int21h
main endp
end main