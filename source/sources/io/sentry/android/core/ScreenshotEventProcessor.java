package io.sentry.android.core;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import defpackage.se;
import io.sentry.Attachment;
import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.Debouncer;
import io.sentry.android.replay.util.MaskRenderer;
import io.sentry.android.replay.util.ViewsKt;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScreenshotEventProcessor implements EventProcessor {
    public final SentryAndroidOptions j;
    public final BuildInfoProvider k;
    public final Debouncer l;
    public final boolean m;
    public final AtomicBoolean n = new AtomicBoolean(false);

    public ScreenshotEventProcessor(SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider, boolean z) {
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.j = sentryAndroidOptions;
        this.k = buildInfoProvider;
        this.l = new Debouncer(3, 2000L);
        this.m = z;
        if (sentryAndroidOptions.isAttachScreenshot()) {
            IntegrationUtils.a("Screenshot");
        }
    }

    public final ViewHierarchyNode b(Activity activity) {
        View view;
        SentryAndroidOptions sentryAndroidOptions = this.j;
        try {
            if (activity.getWindow() != null && activity.getWindow().peekDecorView() != null && activity.getWindow().peekDecorView().getRootView() != null) {
                view = activity.getWindow().peekDecorView().getRootView();
            } else {
                view = null;
            }
            if (view == null) {
                return null;
            }
            ViewHierarchyNode a = ViewHierarchyNode.Companion.a(view, null, sentryAndroidOptions.getScreenshot());
            ViewsKt.a(view, a, sentryAndroidOptions.getScreenshot(), sentryAndroidOptions.getLogger(), null);
            return a;
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to build view hierarchy", th);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0221  */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v9, types: [boolean] */
    @Override // io.sentry.EventProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        Activity activity;
        Bitmap bitmap;
        boolean z;
        boolean z2;
        ViewHierarchyNode viewHierarchyNode;
        Bitmap bitmap2;
        MaskRenderer maskRenderer;
        Throwable th;
        Bitmap bitmap3;
        Bitmap bitmap4;
        final CountDownLatch countDownLatch;
        boolean z3;
        final AtomicBoolean atomicBoolean;
        if (sentryEvent.g()) {
            SentryAndroidOptions sentryAndroidOptions = this.j;
            if (!sentryAndroidOptions.isAttachScreenshot()) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "attachScreenshot is disabled.", new Object[0]);
                return sentryEvent;
            }
            boolean z4 = this.m;
            if (!z4 && !sentryAndroidOptions.getScreenshot().a.isEmpty()) {
                if (!this.n.getAndSet(true)) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Screenshot masking requires sentry-android-replay module", new Object[0]);
                    return sentryEvent;
                }
            } else {
                WeakReference weakReference = CurrentActivityHolder.b.a;
                Bitmap bitmap5 = null;
                if (weakReference != null) {
                    activity = (Activity) weakReference.get();
                } else {
                    activity = null;
                }
                if (activity != null && !HintUtils.c(hint)) {
                    boolean a = this.l.a();
                    sentryAndroidOptions.getBeforeScreenshotCaptureCallback();
                    if (!a) {
                        sentryAndroidOptions.getThreadChecker();
                        ILogger logger = sentryAndroidOptions.getLogger();
                        BuildInfoProvider buildInfoProvider = this.k;
                        boolean isFinishing = activity.isFinishing();
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        if (!isFinishing && !activity.isDestroyed()) {
                            Window window = activity.getWindow();
                            if (window == null) {
                                logger.c(SentryLevel.DEBUG, "Activity window is null, not taking screenshot.", new Object[0]);
                            } else {
                                View peekDecorView = window.peekDecorView();
                                if (peekDecorView == null) {
                                    logger.c(SentryLevel.DEBUG, "DecorView is null, not taking screenshot.", new Object[0]);
                                } else {
                                    View rootView = peekDecorView.getRootView();
                                    if (rootView == null) {
                                        logger.c(SentryLevel.DEBUG, "Root view is null, not taking screenshot.", new Object[0]);
                                    } else if (rootView.getWidth() > 0 && rootView.getHeight() > 0) {
                                        try {
                                            bitmap = Bitmap.createBitmap(rootView.getWidth(), rootView.getHeight(), Bitmap.Config.ARGB_8888);
                                            countDownLatch = new CountDownLatch(1);
                                            buildInfoProvider.getClass();
                                            HandlerThread handlerThread = new HandlerThread("SentryScreenshot");
                                            handlerThread.start();
                                            try {
                                                Handler handler = new Handler(handlerThread.getLooper());
                                                atomicBoolean = new AtomicBoolean(false);
                                                PixelCopy.request(window, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.core.internal.util.c
                                                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                                                    public final void onPixelCopyFinished(int i) {
                                                        boolean z5;
                                                        if (i == 0) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        atomicBoolean.set(z5);
                                                        countDownLatch.countDown();
                                                    }
                                                }, handler);
                                            } catch (Throwable th2) {
                                                try {
                                                    logger.b(SentryLevel.ERROR, "Taking screenshot using PixelCopy failed.", th2);
                                                    handlerThread.quit();
                                                    z3 = false;
                                                } finally {
                                                    handlerThread.quit();
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            logger.b(SentryLevel.ERROR, "Taking screenshot failed.", th3);
                                        }
                                        if (countDownLatch.await(1000L, timeUnit)) {
                                            if (atomicBoolean.get()) {
                                                z3 = true;
                                                if (!z3) {
                                                }
                                                if (bitmap != null) {
                                                    if (!sentryAndroidOptions.getScreenshot().a.isEmpty() && z4) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (z) {
                                                        if (sentryAndroidOptions.getThreadChecker().c()) {
                                                            viewHierarchyNode = b(activity);
                                                            z2 = false;
                                                        } else {
                                                            AtomicReference atomicReference = new AtomicReference(null);
                                                            CountDownLatch countDownLatch2 = new CountDownLatch(1);
                                                            try {
                                                                activity.runOnUiThread(new se(this, atomicReference, activity, countDownLatch2, 1));
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                z2 = false;
                                                            }
                                                            if (!countDownLatch2.await(2000L, timeUnit)) {
                                                                z2 = false;
                                                                try {
                                                                    sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Timed out waiting for view hierarchy capture on main thread", new Object[0]);
                                                                } catch (Throwable th5) {
                                                                    th = th5;
                                                                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to capture view hierarchy", th);
                                                                    viewHierarchyNode = null;
                                                                    if (viewHierarchyNode != null) {
                                                                    }
                                                                }
                                                                viewHierarchyNode = null;
                                                            } else {
                                                                z2 = false;
                                                                viewHierarchyNode = (ViewHierarchyNode) atomicReference.get();
                                                            }
                                                        }
                                                        if (viewHierarchyNode != null) {
                                                            bitmap.recycle();
                                                            return sentryEvent;
                                                        }
                                                        try {
                                                            maskRenderer = new MaskRenderer();
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            bitmap2 = bitmap;
                                                        }
                                                        try {
                                                            bitmap2 = bitmap.isMutable();
                                                            try {
                                                                try {
                                                                } catch (Throwable th7) {
                                                                    th = th7;
                                                                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to mask screenshot", th);
                                                                    if (z2) {
                                                                        bitmap2.recycle();
                                                                    }
                                                                    if (!bitmap.isRecycled()) {
                                                                    }
                                                                    if (bitmap5 != null) {
                                                                    }
                                                                    return sentryEvent;
                                                                }
                                                                if (bitmap2 == 0) {
                                                                    Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                                                                    if (copy == null) {
                                                                        bitmap.recycle();
                                                                        maskRenderer.close();
                                                                        bitmap2 = copy;
                                                                        if (bitmap5 != null) {
                                                                            bitmap = bitmap5;
                                                                        }
                                                                    } else {
                                                                        z2 = true;
                                                                        bitmap4 = copy;
                                                                    }
                                                                } else {
                                                                    bitmap4 = bitmap;
                                                                }
                                                                maskRenderer.a(bitmap4, viewHierarchyNode, null);
                                                                if (z2 && !bitmap.isRecycled()) {
                                                                    bitmap.recycle();
                                                                }
                                                                maskRenderer.close();
                                                                bitmap5 = bitmap4;
                                                                bitmap2 = bitmap4;
                                                                if (bitmap5 != null) {
                                                                }
                                                            } catch (Throwable th8) {
                                                                bitmap3 = bitmap2;
                                                                th = th8;
                                                                try {
                                                                    try {
                                                                        maskRenderer.close();
                                                                        throw th;
                                                                    } catch (Throwable th9) {
                                                                        th = th9;
                                                                        bitmap2 = bitmap3;
                                                                        sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to mask screenshot", th);
                                                                        if (z2 && !bitmap2.isRecycled()) {
                                                                            bitmap2.recycle();
                                                                        }
                                                                        if (!bitmap.isRecycled()) {
                                                                            bitmap.recycle();
                                                                        }
                                                                        if (bitmap5 != null) {
                                                                        }
                                                                        return sentryEvent;
                                                                    }
                                                                } catch (Throwable th10) {
                                                                    th.addSuppressed(th10);
                                                                    throw th;
                                                                }
                                                            }
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            bitmap3 = bitmap;
                                                        }
                                                    }
                                                    hint.d = new Attachment(new k(this, bitmap, 1));
                                                    hint.d(activity, "android:activity");
                                                }
                                            }
                                        }
                                        z3 = false;
                                        if (!z3) {
                                        }
                                        if (bitmap != null) {
                                        }
                                    } else {
                                        logger.c(SentryLevel.DEBUG, "View's width and height is zeroed, not taking screenshot.", new Object[0]);
                                    }
                                }
                            }
                        } else {
                            logger.c(SentryLevel.DEBUG, "Activity isn't valid, not taking screenshot.", new Object[0]);
                        }
                        bitmap = null;
                        if (bitmap != null) {
                        }
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
