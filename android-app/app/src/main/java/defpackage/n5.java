package defpackage;

import android.content.Intent;
import android.os.Trace;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.work.DirectExecutor;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.messaging.EnhancedIntentService;
import io.sentry.Baggage;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.PropagationContext;
import io.sentry.Scope;
import io.sentry.ScopeCallback;
import io.sentry.SentryOptions;
import io.sentry.SentryTracer;
import io.sentry.android.core.internal.gestures.SentryGestureListener;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n5 implements ComponentFactory, ListenerSet.Event, ListenerSet.IterationFinishedEvent, OnCompleteListener, CallbackToFutureAdapter.Resolver, Consumer, SynchronizationGuard.CriticalSection, Scope.IWithTransaction, ScopeCallback, Scope.IWithPropagationContext {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ n5(AnalyticsListener.EventTime eventTime, Object obj, long j) {
        this.j = 2;
        this.k = eventTime;
        this.l = obj;
    }

    @Override // io.sentry.Scope.IWithPropagationContext
    public void a(PropagationContext propagationContext) {
        IScope iScope = (IScope) this.k;
        SentryOptions sentryOptions = (SentryOptions) this.l;
        Baggage baggage = propagationContext.c;
        if (baggage.e) {
            baggage.c(iScope, sentryOptions);
            baggage.e = false;
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) this.k;
        ((MediaSourceEventListener) obj).o(eventDispatcher.a, eventDispatcher.b, (MediaLoadData) this.l);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        int i = this.j;
        Object obj2 = this.l;
        AnalyticsListener.EventTime eventTime = (AnalyticsListener.EventTime) this.k;
        switch (i) {
            case 1:
                ((AnalyticsListener) obj).k(eventTime, (MediaLoadData) obj2);
                return;
            default:
                ((AnalyticsListener) obj).j(eventTime, obj2);
                return;
        }
    }

    @Override // io.sentry.Scope.IWithTransaction
    public void c(ITransaction iTransaction) {
        int i = this.j;
        Object obj = this.l;
        Object obj2 = this.k;
        switch (i) {
            case 11:
                IScope iScope = (IScope) obj;
                if (iTransaction == ((SentryTracer) obj2)) {
                    iScope.o();
                    return;
                }
                return;
            default:
                IScope iScope2 = (IScope) obj;
                if (iTransaction == ((SentryGestureListener) obj2).n) {
                    iScope2.o();
                    return;
                }
                return;
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object d(ComponentContainer componentContainer) {
        String str = (String) this.k;
        Component component = (Component) this.l;
        try {
            Trace.beginSection(str);
            return component.f.d(componentContainer);
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object e(CallbackToFutureAdapter.Completer completer) {
        int i = this.j;
        Object obj = this.l;
        final int i2 = 0;
        Executor executor = (Executor) this.k;
        switch (i) {
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                p1 p1Var = (p1) obj;
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                Runnable runnable = new Runnable() { // from class: qa
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        switch (i3) {
                            case 0:
                                atomicBoolean2.set(true);
                                return;
                            default:
                                atomicBoolean2.set(true);
                                return;
                        }
                    }
                };
                DirectExecutor directExecutor = DirectExecutor.j;
                ResolvableFuture resolvableFuture = completer.c;
                if (resolvableFuture != null) {
                    resolvableFuture.a(runnable, directExecutor);
                }
                executor.execute(new s3(atomicBoolean, completer, p1Var, 5));
                return "setForegroundAsync";
            default:
                Function0 function0 = (Function0) obj;
                final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                final int i3 = 1;
                Runnable runnable2 = new Runnable() { // from class: qa
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i32 = i3;
                        AtomicBoolean atomicBoolean22 = atomicBoolean2;
                        switch (i32) {
                            case 0:
                                atomicBoolean22.set(true);
                                return;
                            default:
                                atomicBoolean22.set(true);
                                return;
                        }
                    }
                };
                DirectExecutor directExecutor2 = DirectExecutor.j;
                ResolvableFuture resolvableFuture2 = completer.c;
                if (resolvableFuture2 != null) {
                    resolvableFuture2.a(runnable2, directExecutor2);
                }
                executor.execute(new s3(atomicBoolean2, completer, function0, 8));
                return Unit.a;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void f(Object obj, FlagSet flagSet) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        analyticsListener.l((Player) this.l, new AnalyticsListener.Events(flagSet, ((DefaultAnalyticsCollector) this.k).n));
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void h(Task task) {
        EnhancedIntentService enhancedIntentService = (EnhancedIntentService) this.k;
        Intent intent = (Intent) this.l;
        int i = EnhancedIntentService.o;
        enhancedIntentService.a(intent);
    }

    @Override // io.sentry.ScopeCallback
    public void i(IScope iScope) {
        iScope.E(new l7((SentryGestureListener) this.k, iScope, (ITransaction) this.l));
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object m() {
        int i = this.j;
        Object obj = this.l;
        Uploader uploader = (Uploader) this.k;
        switch (i) {
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Iterable iterable = (Iterable) obj;
                SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) uploader.c;
                sQLiteEventStore.getClass();
                if (iterable.iterator().hasNext()) {
                    sQLiteEventStore.h().compileStatement("DELETE FROM events WHERE _id in ".concat(SQLiteEventStore.O(iterable))).execute();
                }
                return null;
            default:
                for (Map.Entry entry : ((HashMap) obj).entrySet()) {
                    ((SQLiteEventStore) uploader.i).A(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
                }
                return null;
        }
    }

    public /* synthetic */ n5(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }
}
