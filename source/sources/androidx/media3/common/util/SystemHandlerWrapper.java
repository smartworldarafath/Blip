package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.util.HandlerWrapper;
import com.google.common.base.Preconditions;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemHandlerWrapper implements HandlerWrapper {
    public static final ArrayList b = new ArrayList(50);
    public final Handler a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SystemMessage implements HandlerWrapper.Message {
        public Message a;

        @Override // androidx.media3.common.util.HandlerWrapper.Message
        public final void a() {
            Message message = this.a;
            message.getClass();
            message.sendToTarget();
            b();
        }

        public final void b() {
            this.a = null;
            ArrayList arrayList = SystemHandlerWrapper.b;
            synchronized (arrayList) {
                try {
                    if (arrayList.size() < 50) {
                        arrayList.add(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public SystemHandlerWrapper(Handler handler) {
        this.a = handler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SystemMessage l() {
        SystemMessage systemMessage;
        ArrayList arrayList = b;
        synchronized (arrayList) {
            try {
                if (arrayList.isEmpty()) {
                    systemMessage = new Object();
                } else {
                    systemMessage = (SystemMessage) arrayList.remove(arrayList.size() - 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return systemMessage;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message a(int i, int i2, int i3) {
        SystemMessage l = l();
        l.a = this.a.obtainMessage(i, i2, i3);
        return l;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message b(Object obj) {
        SystemMessage l = l();
        l.a = this.a.obtainMessage(31, 0, 0, obj);
        return l;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean c(HandlerWrapper.Message message) {
        SystemMessage systemMessage = (SystemMessage) message;
        Message message2 = systemMessage.a;
        message2.getClass();
        boolean sendMessageAtFrontOfQueue = this.a.sendMessageAtFrontOfQueue(message2);
        systemMessage.b();
        return sendMessageAtFrontOfQueue;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean d(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message e(int i) {
        SystemMessage l = l();
        l.a = this.a.obtainMessage(i);
        return l;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final void f() {
        this.a.removeCallbacksAndMessages(null);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean g(long j) {
        return this.a.sendEmptyMessageAtTime(2, j);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean h(int i) {
        return this.a.hasMessages(i);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final boolean i(int i) {
        return this.a.sendEmptyMessage(i);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final void j(int i) {
        boolean z;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.a.removeMessages(i);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public final HandlerWrapper.Message k(int i, Object obj) {
        SystemMessage l = l();
        l.a = this.a.obtainMessage(i, obj);
        return l;
    }
}
