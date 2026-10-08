package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReorderingBufferQueue {
    public final OutputConsumer a;
    public final ArrayDeque b = new ArrayDeque();
    public final ArrayDeque c = new ArrayDeque();
    public final PriorityQueue d = new PriorityQueue();
    public int e = -1;
    public BuffersWithTimestamp f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BuffersWithTimestamp implements Comparable<BuffersWithTimestamp> {
        public long k = -9223372036854775807L;
        public final ArrayList j = new ArrayList();

        @Override // java.lang.Comparable
        public final int compareTo(BuffersWithTimestamp buffersWithTimestamp) {
            return Long.compare(this.k, buffersWithTimestamp.k);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OutputConsumer {
        void e(long j, ParsableByteArray parsableByteArray);
    }

    public ReorderingBufferQueue(OutputConsumer outputConsumer) {
        this.a = outputConsumer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r9 < r1.k) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(long j, ParsableByteArray parsableByteArray) {
        int i;
        ParsableByteArray parsableByteArray2;
        BuffersWithTimestamp buffersWithTimestamp;
        if (j != -9223372036854775807L && (i = this.e) != 0) {
            PriorityQueue priorityQueue = this.d;
            if (i != -1 && priorityQueue.size() >= this.e) {
                BuffersWithTimestamp buffersWithTimestamp2 = (BuffersWithTimestamp) priorityQueue.peek();
                String str = Util.a;
            }
            ArrayDeque arrayDeque = this.b;
            if (arrayDeque.isEmpty()) {
                parsableByteArray2 = new ParsableByteArray();
            } else {
                parsableByteArray2 = (ParsableByteArray) arrayDeque.pop();
            }
            parsableByteArray2.J(parsableByteArray.a());
            boolean z = false;
            System.arraycopy(parsableByteArray.a, parsableByteArray.b, parsableByteArray2.a, 0, parsableByteArray2.a());
            BuffersWithTimestamp buffersWithTimestamp3 = this.f;
            if (buffersWithTimestamp3 != null && j == buffersWithTimestamp3.k) {
                buffersWithTimestamp3.j.add(parsableByteArray2);
                return;
            }
            ArrayDeque arrayDeque2 = this.c;
            if (arrayDeque2.isEmpty()) {
                buffersWithTimestamp = new BuffersWithTimestamp();
            } else {
                buffersWithTimestamp = (BuffersWithTimestamp) arrayDeque2.pop();
            }
            ArrayList arrayList = buffersWithTimestamp.j;
            if (j != -9223372036854775807L) {
                z = true;
            }
            Preconditions.e(z);
            Preconditions.n(arrayList.isEmpty());
            buffersWithTimestamp.k = j;
            arrayList.add(parsableByteArray2);
            priorityQueue.add(buffersWithTimestamp);
            this.f = buffersWithTimestamp;
            int i2 = this.e;
            if (i2 != -1) {
                b(i2);
                return;
            }
            return;
        }
        this.a.e(j, parsableByteArray);
    }

    public final void b(int i) {
        ArrayList arrayList;
        while (true) {
            PriorityQueue priorityQueue = this.d;
            if (priorityQueue.size() > i) {
                BuffersWithTimestamp buffersWithTimestamp = (BuffersWithTimestamp) priorityQueue.poll();
                String str = Util.a;
                int i2 = 0;
                while (true) {
                    arrayList = buffersWithTimestamp.j;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    this.a.e(buffersWithTimestamp.k, (ParsableByteArray) arrayList.get(i2));
                    this.b.push((ParsableByteArray) arrayList.get(i2));
                    i2++;
                }
                arrayList.clear();
                BuffersWithTimestamp buffersWithTimestamp2 = this.f;
                if (buffersWithTimestamp2 != null && buffersWithTimestamp2.k == buffersWithTimestamp.k) {
                    this.f = null;
                }
                this.c.push(buffersWithTimestamp);
            } else {
                return;
            }
        }
    }

    public final void c(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        this.e = i;
        b(i);
    }
}
