package androidx.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.core.view.VelocityTrackerCompat;
import java.util.Map;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DifferentialMotionFlingController {
    public final Context a;
    public final DifferentialMotionFlingTarget b;
    public VelocityTracker c;
    public float d;
    public int e = -1;
    public int f = -1;
    public int g = -1;
    public final int[] h = {Integer.MAX_VALUE, 0};

    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this.a = context;
        this.b = differentialMotionFlingTarget;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x00b8, code lost:
    
        if (r5 >= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0071, code lost:
    
        if (r14 >= 0) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0231  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(MotionEvent motionEvent, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        float f;
        float f2;
        float f3;
        long j;
        int i8;
        float f4;
        float f5;
        float sqrt;
        float f6;
        float[] fArr;
        float f7;
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        int i9 = this.f;
        int[] iArr = this.h;
        if (i9 == source && this.g == deviceId && this.e == i) {
            z = false;
            i2 = 1;
            i3 = 0;
        } else {
            Context context = this.a;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int deviceId2 = motionEvent.getDeviceId();
            int source2 = motionEvent.getSource();
            i2 = 1;
            int i10 = Build.VERSION.SDK_INT;
            i3 = 0;
            if (i10 >= 34) {
                i4 = ViewConfigurationCompat$Api34Impl.b(viewConfiguration, deviceId2, i, source2);
            } else {
                InputDevice device = InputDevice.getDevice(deviceId2);
                if (device != null && device.getMotionRange(i, source2) != null) {
                    Resources resources = context.getResources();
                    if (source2 == 4194304 && i == 26) {
                        i5 = resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", "android");
                    } else {
                        i5 = -1;
                    }
                    Objects.requireNonNull(viewConfiguration);
                    if (i5 != -1) {
                        if (i5 != 0) {
                            i4 = resources.getDimensionPixelSize(i5);
                        }
                    } else {
                        i4 = viewConfiguration.getScaledMinimumFlingVelocity();
                    }
                }
                i4 = Integer.MAX_VALUE;
            }
            iArr[0] = i4;
            int deviceId3 = motionEvent.getDeviceId();
            int source3 = motionEvent.getSource();
            if (i10 >= 34) {
                i6 = ViewConfigurationCompat$Api34Impl.a(viewConfiguration, deviceId3, i, source3);
            } else {
                InputDevice device2 = InputDevice.getDevice(deviceId3);
                if (device2 != null && device2.getMotionRange(i, source3) != null) {
                    Resources resources2 = context.getResources();
                    if (source3 == 4194304 && i == 26) {
                        i7 = resources2.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", "android");
                    } else {
                        i7 = -1;
                    }
                    Objects.requireNonNull(viewConfiguration);
                    if (i7 != -1) {
                        if (i7 != 0) {
                            i6 = resources2.getDimensionPixelSize(i7);
                        }
                    } else {
                        i6 = viewConfiguration.getScaledMaximumFlingVelocity();
                    }
                }
                i6 = Integer.MIN_VALUE;
            }
            iArr[1] = i6;
            this.f = source;
            this.g = deviceId;
            this.e = i;
            z = true;
        }
        int i11 = iArr[i3];
        VelocityTracker velocityTracker = this.c;
        if (i11 == Integer.MAX_VALUE) {
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.c = null;
                return;
            }
            return;
        }
        if (velocityTracker == null) {
            this.c = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker2 = this.c;
        Map map = VelocityTrackerCompat.a;
        velocityTracker2.addMovement(motionEvent);
        float f8 = 0.0f;
        int i12 = 20;
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            Map map2 = VelocityTrackerCompat.a;
            if (!map2.containsKey(velocityTracker2)) {
                map2.put(velocityTracker2, new VelocityTrackerFallback());
            }
            VelocityTrackerFallback velocityTrackerFallback = (VelocityTrackerFallback) map2.get(velocityTracker2);
            long[] jArr = velocityTrackerFallback.b;
            long eventTime = motionEvent.getEventTime();
            if (velocityTrackerFallback.d != 0 && eventTime - jArr[velocityTrackerFallback.e] > 40) {
                velocityTrackerFallback.d = i3;
                velocityTrackerFallback.c = 0.0f;
            }
            int i13 = (velocityTrackerFallback.e + 1) % 20;
            velocityTrackerFallback.e = i13;
            int i14 = velocityTrackerFallback.d;
            if (i14 != 20) {
                velocityTrackerFallback.d = i14 + 1;
            }
            velocityTrackerFallback.a[i13] = motionEvent.getAxisValue(26);
            jArr[velocityTrackerFallback.e] = eventTime;
        }
        velocityTracker2.computeCurrentVelocity(1000, Float.MAX_VALUE);
        VelocityTrackerFallback velocityTrackerFallback2 = (VelocityTrackerFallback) VelocityTrackerCompat.a.get(velocityTracker2);
        if (velocityTrackerFallback2 != null) {
            float[] fArr2 = velocityTrackerFallback2.a;
            long[] jArr2 = velocityTrackerFallback2.b;
            int i15 = velocityTrackerFallback2.d;
            if (i15 >= 2) {
                int i16 = velocityTrackerFallback2.e;
                int i17 = ((i16 + 20) - (i15 - 1)) % 20;
                long j2 = jArr2[i16];
                while (true) {
                    j = jArr2[i17];
                    long j3 = j2 - j;
                    i8 = velocityTrackerFallback2.d;
                    if (j3 <= 100) {
                        break;
                    }
                    velocityTrackerFallback2.d = i8 - 1;
                    i17 = (i17 + 1) % 20;
                }
                if (i8 >= 2) {
                    if (i8 == 2) {
                        int i18 = (i17 + 1) % 20;
                        long j4 = jArr2[i18];
                        if (j != j4) {
                            sqrt = fArr2[i18] / ((float) (j4 - j));
                            f4 = Float.MAX_VALUE;
                            f = 0.0f;
                        }
                    } else {
                        f4 = Float.MAX_VALUE;
                        float f9 = 0.0f;
                        int i19 = 0;
                        int i20 = 0;
                        while (true) {
                            f5 = 1.0f;
                            if (i19 >= velocityTrackerFallback2.d - 1) {
                                break;
                            }
                            int i21 = i19 + i17;
                            long j5 = jArr2[i21 % 20];
                            int i22 = (i21 + 1) % i12;
                            if (jArr2[i22] == j5) {
                                f6 = f8;
                                fArr = fArr2;
                            } else {
                                i20++;
                                if (f9 < f8) {
                                    f5 = -1.0f;
                                }
                                f6 = f8;
                                fArr = fArr2;
                                float sqrt2 = f5 * ((float) Math.sqrt(Math.abs(f9) * 2.0f));
                                float f10 = fArr[i22] / ((float) (jArr2[i22] - j5));
                                f9 += Math.abs(f10) * (f10 - sqrt2);
                                if (i20 == i2) {
                                    f9 *= 0.5f;
                                }
                            }
                            i19++;
                            f8 = f6;
                            fArr2 = fArr;
                            i12 = 20;
                            i2 = 1;
                        }
                        f = f8;
                        if (f9 < f) {
                            f5 = -1.0f;
                        }
                        sqrt = f5 * ((float) Math.sqrt(Math.abs(f9) * 2.0f));
                    }
                    f7 = sqrt * 1000.0f;
                    velocityTrackerFallback2.c = f7;
                    if (f7 >= (-Math.abs(f4))) {
                        velocityTrackerFallback2.c = -Math.abs(f4);
                    } else if (velocityTrackerFallback2.c > Math.abs(f4)) {
                        velocityTrackerFallback2.c = Math.abs(f4);
                    }
                }
            }
            f4 = Float.MAX_VALUE;
            sqrt = 0.0f;
            f = 0.0f;
            f7 = sqrt * 1000.0f;
            velocityTrackerFallback2.c = f7;
            if (f7 >= (-Math.abs(f4))) {
            }
        } else {
            f = 0.0f;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            f2 = VelocityTrackerCompat.Api34Impl.a(velocityTracker2, i);
        } else if (i == 0) {
            f2 = velocityTracker2.getXVelocity();
        } else if (i == 1) {
            f2 = velocityTracker2.getYVelocity();
        } else {
            VelocityTrackerFallback velocityTrackerFallback3 = (VelocityTrackerFallback) VelocityTrackerCompat.a.get(velocityTracker2);
            if (velocityTrackerFallback3 != null && i == 26) {
                f2 = velocityTrackerFallback3.c;
            } else {
                f2 = f;
            }
        }
        DifferentialMotionFlingTarget differentialMotionFlingTarget = this.b;
        float b = differentialMotionFlingTarget.b() * f2;
        float signum = Math.signum(b);
        if (z || (signum != Math.signum(this.d) && signum != f)) {
            differentialMotionFlingTarget.c();
        }
        if (Math.abs(b) < iArr[0]) {
            return;
        }
        float max = Math.max(-r1, Math.min(b, iArr[1]));
        if (differentialMotionFlingTarget.a(max)) {
            f3 = max;
        } else {
            f3 = f;
        }
        this.d = f3;
    }
}
