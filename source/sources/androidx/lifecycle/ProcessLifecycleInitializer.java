package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDispatcher;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import defpackage.u2;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Initializer<LifecycleOwner> {
    @Override // androidx.startup.Initializer
    public final List a() {
        return EmptyList.j;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        context.getClass();
        AppInitializer c = AppInitializer.c(context);
        c.getClass();
        if (c.b.contains(ProcessLifecycleInitializer.class)) {
            if (!LifecycleDispatcher.a.getAndSet(true)) {
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new LifecycleDispatcher.DispatcherActivityCallback());
            }
            final ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.r;
            processLifecycleOwner.getClass();
            processLifecycleOwner.n = new Handler();
            processLifecycleOwner.o.e(Lifecycle.Event.ON_CREATE);
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    activity.getClass();
                    if (Build.VERSION.SDK_INT < 29) {
                        int i = ReportFragment.k;
                        Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
                        findFragmentByTag.getClass();
                        ((ReportFragment) findFragmentByTag).j = ProcessLifecycleOwner.this.q;
                    }
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    activity.getClass();
                    ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner2.k - 1;
                    processLifecycleOwner2.k = i;
                    if (i == 0) {
                        Handler handler = processLifecycleOwner2.n;
                        handler.getClass();
                        handler.postDelayed(processLifecycleOwner2.p, 700L);
                    }
                }

                /* JADX WARN: Type inference failed for: r2v1, types: [androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1] */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPreCreated(Activity activity, Bundle bundle) {
                    activity.getClass();
                    final ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                    ProcessLifecycleOwner.Api29Impl.a(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostResumed(Activity activity2) {
                            activity2.getClass();
                            ProcessLifecycleOwner.this.b();
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostStarted(Activity activity2) {
                            activity2.getClass();
                            ProcessLifecycleOwner processLifecycleOwner3 = ProcessLifecycleOwner.this;
                            int i = processLifecycleOwner3.j + 1;
                            processLifecycleOwner3.j = i;
                            if (i == 1 && processLifecycleOwner3.m) {
                                processLifecycleOwner3.o.e(Lifecycle.Event.ON_START);
                                processLifecycleOwner3.m = false;
                            }
                        }
                    });
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    activity.getClass();
                    ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner2.j - 1;
                    processLifecycleOwner2.j = i;
                    if (i == 0 && processLifecycleOwner2.l) {
                        processLifecycleOwner2.o.e(Lifecycle.Event.ON_STOP);
                        processLifecycleOwner2.m = true;
                    }
                }
            });
            return processLifecycleOwner;
        }
        u2.l("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        return null;
    }
}
