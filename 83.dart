class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? curr;

    curr = head;
    while(curr != null && curr.next != null){
      if(curr.val == curr.next!.val){
        curr.next = curr.next!.next;
      }
      else{
        curr = curr.next;
      }
    }

    return head;
  }
}
