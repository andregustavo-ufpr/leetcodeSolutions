/**
 * Definition for singly-linked list.
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode result = ListNode();
    ListNode curr = result;

    while(list1 != null && list2 != null){
      if(list1.val < list2.val){
        curr.next = list1;
        curr = list1;
        list1 = list1.next;
      }
      else{
        curr.next = list2;
        curr = list2;
        list2 = list2.next;
      }
    }

    if(list1 != null){
      curr.next = list1;
    }
    if(list2 != null){
      curr.next = list2;
    }

    return result.next;
  }
}