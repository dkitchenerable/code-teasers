def detect_and_remove_cycle(head)
  slow = head
  fast = head
  while (slow && fast && fast.next)
    slow = slow.next
    prev_fast = fast.next
    fast = fast.next.next
    if slow.key == fast.key
      prev_fast.next = nil
      break
    end
  end
  return head
end
