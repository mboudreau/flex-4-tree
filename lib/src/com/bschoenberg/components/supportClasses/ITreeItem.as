/*
Copyright (C) 2011 by Billy Schoenberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

package com.bschoenberg.components.supportClasses
{
    import flash.events.IEventDispatcher;
    
    import mx.collections.IList;

    public interface ITreeItem extends IEventDispatcher
    {
        function hasDescendant(item:ITreeItem):Boolean;
        function addItem(item:ITreeItem,dispatchTreeEvent:Boolean=true):void;
        function addItemAt(item:ITreeItem,index:int,dispatchTreeEvent:Boolean=true):void;
        function removeItem(item:ITreeItem,dispatchTreeEvent:Boolean=true):ITreeItem;
        function getItemAt(index:int):ITreeItem;
        
        function getAllItems():IList;
        function getAllExpandedItems():IList;
        
        function setParent(item:ITreeItem):void;
        function expandRecursive():void;
        
        function get expanded():Boolean;
        function set expanded(value:Boolean):void;
        
        function get indentLevel():int;
        
        function get items():IList;
        function get parent():ITreeItem;
    }
}