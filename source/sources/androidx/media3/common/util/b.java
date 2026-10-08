package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.FlagSet;
import androidx.media3.common.util.ListenerSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Handler.Callback {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ListenerSet listenerSet = (ListenerSet) obj;
                ListenerSet.IterationFinishedEvent iterationFinishedEvent = listenerSet.c;
                iterationFinishedEvent.getClass();
                Iterator it = listenerSet.d.iterator();
                while (it.hasNext()) {
                    ListenerSet.ListenerHolder listenerHolder = (ListenerSet.ListenerHolder) it.next();
                    if (!listenerHolder.d && listenerHolder.c) {
                        FlagSet b = listenerHolder.b.b();
                        listenerHolder.b = new FlagSet.Builder();
                        listenerHolder.c = false;
                        iterationFinishedEvent.f(listenerHolder.a, b);
                    }
                    HandlerWrapper handlerWrapper = listenerSet.b;
                    handlerWrapper.getClass();
                    if (((SystemHandlerWrapper) handlerWrapper).a.hasMessages(1)) {
                        return true;
                    }
                }
                return true;
            default:
                StuckPlayerDetector stuckPlayerDetector = (StuckPlayerDetector) obj;
                int i2 = message.what;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                return false;
                            }
                            stuckPlayerDetector.j.a();
                        } else {
                            stuckPlayerDetector.i.a();
                        }
                    } else {
                        stuckPlayerDetector.h.a();
                    }
                } else {
                    stuckPlayerDetector.g.a();
                }
                return true;
        }
    }
}
