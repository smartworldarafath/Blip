package io.sentry.android.core.internal.gestures;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.Window;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.gestures.SentryGestureListener;
import io.sentry.internal.gestures.UiElement;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryWindowCallback extends WindowCallbackAdapter {
    public final Window.Callback k;
    public final SentryGestureListener l;
    public final SentryGestureDetector m;
    public final SentryOptions n;
    public final AnonymousClass1 o;
    public volatile boolean p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.internal.gestures.SentryWindowCallback$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r3v1, types: [io.sentry.android.core.internal.gestures.SentryWindowCallback$1, java.lang.Object] */
    public SentryWindowCallback(Window.Callback callback, Activity activity, SentryGestureListener sentryGestureListener, SentryOptions sentryOptions) {
        super(callback);
        SentryGestureDetector sentryGestureDetector = new SentryGestureDetector(activity, sentryGestureListener);
        ?? obj = new Object();
        this.k = callback;
        this.l = sentryGestureListener;
        this.n = sentryOptions;
        this.m = sentryGestureDetector;
        this.o = obj;
    }

    public final void a(MotionEvent motionEvent) {
        String str;
        if (!this.p) {
            SentryGestureDetector sentryGestureDetector = this.m;
            int i = sentryGestureDetector.c;
            SentryGestureListener sentryGestureListener = sentryGestureDetector.a;
            ISentryLifecycleToken a = sentryGestureDetector.m.a();
            try {
                int actionMasked = motionEvent.getActionMasked();
                if (sentryGestureDetector.l == null) {
                    sentryGestureDetector.l = VelocityTracker.obtain();
                }
                sentryGestureDetector.l.addMovement(motionEvent);
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked == 5) {
                                    sentryGestureDetector.e = false;
                                    sentryGestureDetector.f = true;
                                }
                            } else {
                                sentryGestureDetector.a();
                            }
                        } else {
                            float x = motionEvent.getX();
                            float y = motionEvent.getY();
                            float f = x - sentryGestureDetector.g;
                            float f2 = y - sentryGestureDetector.h;
                            if ((f2 * f2) + (f * f) > sentryGestureDetector.b) {
                                sentryGestureListener.onScroll(sentryGestureDetector.k, motionEvent, sentryGestureDetector.i - x, sentryGestureDetector.j - y);
                                sentryGestureDetector.e = false;
                                sentryGestureDetector.i = x;
                                sentryGestureDetector.j = y;
                            }
                        }
                    } else if (sentryGestureDetector.f) {
                        sentryGestureDetector.a();
                    } else {
                        if (sentryGestureDetector.e) {
                            sentryGestureListener.onSingleTapUp(motionEvent);
                        } else {
                            int pointerId = motionEvent.getPointerId(0);
                            sentryGestureDetector.l.computeCurrentVelocity(1000, sentryGestureDetector.d);
                            float xVelocity = sentryGestureDetector.l.getXVelocity(pointerId);
                            float yVelocity = sentryGestureDetector.l.getYVelocity(pointerId);
                            float f3 = i;
                            if (Math.abs(xVelocity) > f3 || Math.abs(yVelocity) > f3) {
                                sentryGestureListener.onFling(sentryGestureDetector.k, motionEvent, xVelocity, yVelocity);
                            }
                        }
                        sentryGestureDetector.a();
                    }
                } else {
                    sentryGestureDetector.g = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    sentryGestureDetector.h = y2;
                    sentryGestureDetector.i = sentryGestureDetector.g;
                    sentryGestureDetector.j = y2;
                    sentryGestureDetector.e = true;
                    sentryGestureDetector.f = false;
                    MotionEvent motionEvent2 = sentryGestureDetector.k;
                    if (motionEvent2 != null) {
                        motionEvent2.recycle();
                    }
                    sentryGestureDetector.k = MotionEvent.obtain(motionEvent);
                    sentryGestureListener.onDown(motionEvent);
                }
                a.close();
                if (motionEvent.getActionMasked() == 1) {
                    SentryGestureListener sentryGestureListener2 = this.l;
                    View b = sentryGestureListener2.b("onUp");
                    SentryGestureListener.ScrollState scrollState = sentryGestureListener2.p;
                    UiElement uiElement = scrollState.b;
                    if (b != null && uiElement != null) {
                        SentryGestureListener.GestureType gestureType = scrollState.a;
                        SentryGestureListener.GestureType gestureType2 = SentryGestureListener.GestureType.Unknown;
                        if (gestureType == gestureType2) {
                            sentryGestureListener2.l.getLogger().c(SentryLevel.DEBUG, "Unable to define scroll type. No breadcrumb captured.", new Object[0]);
                            return;
                        }
                        float x2 = motionEvent.getX() - scrollState.c;
                        float y3 = motionEvent.getY() - scrollState.d;
                        if (Math.abs(x2) > Math.abs(y3)) {
                            if (x2 > 0.0f) {
                                str = "right";
                            } else {
                                str = "left";
                            }
                        } else if (y3 > 0.0f) {
                            str = "down";
                        } else {
                            str = "up";
                        }
                        sentryGestureListener2.a(uiElement, scrollState.a, Collections.singletonMap("direction", str), motionEvent);
                        sentryGestureListener2.c(uiElement, scrollState.a);
                        scrollState.b = null;
                        scrollState.a = gestureType2;
                        scrollState.c = 0.0f;
                        scrollState.d = 0.0f;
                    }
                }
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    @Override // io.sentry.android.core.internal.gestures.WindowCallbackAdapter, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        SentryOptions sentryOptions;
        if (motionEvent != null) {
            this.o.getClass();
            try {
                a(MotionEvent.obtain(motionEvent));
            } finally {
                if (sentryOptions != null) {
                    try {
                    } finally {
                    }
                }
            }
        }
        return this.j.dispatchTouchEvent(motionEvent);
    }
}
