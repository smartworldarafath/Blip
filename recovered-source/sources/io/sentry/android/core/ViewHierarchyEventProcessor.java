package io.sentry.android.core;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import defpackage.tc;
import io.sentry.Attachment;
import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.gestures.ViewUtils;
import io.sentry.android.core.internal.util.ClassUtil;
import io.sentry.android.core.internal.util.Debouncer;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.ViewHierarchy;
import io.sentry.protocol.ViewHierarchyNode;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import io.sentry.util.thread.IThreadChecker;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewHierarchyEventProcessor implements EventProcessor {
    public final SentryAndroidOptions j;
    public final Debouncer k;

    public ViewHierarchyEventProcessor(SentryAndroidOptions sentryAndroidOptions) {
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.j = sentryAndroidOptions;
        this.k = new Debouncer(3, 2000L);
        if (sentryAndroidOptions.isAttachViewHierarchy()) {
            IntegrationUtils.a("ViewHierarchy");
        }
    }

    public static void b(View view, ViewHierarchyNode viewHierarchyNode, List list) {
        if (view instanceof ViewGroup) {
            Iterator it = list.iterator();
            if (!it.hasNext()) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                if (childCount == 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList(childCount);
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null) {
                        ViewHierarchyNode c = c(childAt);
                        arrayList.add(c);
                        b(childAt, c, list);
                    }
                }
                viewHierarchyNode.t = arrayList;
                return;
            }
            it.next().getClass();
            io.sentry.d.i();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.ViewHierarchyNode, java.lang.Object] */
    public static ViewHierarchyNode c(View view) {
        ?? obj = new Object();
        obj.k = ClassUtil.a(view);
        try {
            obj.l = ViewUtils.b(view);
        } catch (Throwable unused) {
        }
        obj.p = Double.valueOf(view.getX());
        obj.q = Double.valueOf(view.getY());
        obj.n = Double.valueOf(view.getWidth());
        obj.o = Double.valueOf(view.getHeight());
        obj.s = Double.valueOf(view.getAlpha());
        int visibility = view.getVisibility();
        if (visibility != 0) {
            if (visibility != 4) {
                if (visibility == 8) {
                    obj.r = "gone";
                }
            } else {
                obj.r = "invisible";
            }
        } else {
            obj.r = "visible";
        }
        return obj;
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        Activity activity;
        if (sentryEvent.g()) {
            SentryAndroidOptions sentryAndroidOptions = this.j;
            if (!sentryAndroidOptions.isAttachViewHierarchy()) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "attachViewHierarchy is disabled.", new Object[0]);
                return sentryEvent;
            }
            if (!HintUtils.c(hint)) {
                boolean a = this.k.a();
                sentryAndroidOptions.getBeforeViewHierarchyCaptureCallback();
                if (!a) {
                    WeakReference weakReference = CurrentActivityHolder.b.a;
                    ViewHierarchy viewHierarchy = null;
                    if (weakReference != null) {
                        activity = (Activity) weakReference.get();
                    } else {
                        activity = null;
                    }
                    List<Object> viewHierarchyExporters = sentryAndroidOptions.getViewHierarchyExporters();
                    IThreadChecker threadChecker = sentryAndroidOptions.getThreadChecker();
                    ILogger logger = sentryAndroidOptions.getLogger();
                    if (activity == null) {
                        logger.c(SentryLevel.INFO, "Missing activity for view hierarchy snapshot.", new Object[0]);
                    } else {
                        Window window = activity.getWindow();
                        if (window == null) {
                            logger.c(SentryLevel.INFO, "Missing window for view hierarchy snapshot.", new Object[0]);
                        } else {
                            View peekDecorView = window.peekDecorView();
                            if (peekDecorView == null) {
                                logger.c(SentryLevel.INFO, "Missing decor view for view hierarchy snapshot.", new Object[0]);
                            } else {
                                try {
                                    if (threadChecker.c()) {
                                        ArrayList arrayList = new ArrayList(1);
                                        ViewHierarchy viewHierarchy2 = new ViewHierarchy("android_view_system", arrayList);
                                        ViewHierarchyNode c = c(peekDecorView);
                                        arrayList.add(c);
                                        b(peekDecorView, c, viewHierarchyExporters);
                                        viewHierarchy = viewHierarchy2;
                                    } else {
                                        CountDownLatch countDownLatch = new CountDownLatch(1);
                                        AtomicReference atomicReference = new AtomicReference(null);
                                        activity.runOnUiThread(new tc(atomicReference, peekDecorView, viewHierarchyExporters, countDownLatch, logger, 1));
                                        if (countDownLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                                            viewHierarchy = (ViewHierarchy) atomicReference.get();
                                        }
                                    }
                                } catch (Throwable th) {
                                    logger.b(SentryLevel.ERROR, "Failed to process view hierarchy.", th);
                                }
                            }
                        }
                    }
                    if (viewHierarchy != null) {
                        hint.e = new Attachment(viewHierarchy);
                    }
                }
            }
        }
        return sentryEvent;
    }

    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        return sentryTransaction;
    }
}
