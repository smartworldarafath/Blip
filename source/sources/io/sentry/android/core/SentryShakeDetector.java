package io.sentry.android.core;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import io.sentry.ILogger;
import io.sentry.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryShakeDetector implements SensorEventListener {
    public SensorManager a;
    public Sensor b;
    public HandlerThread c;
    public Handler d;
    public volatile Listener e;
    public ILogger f;
    public final SampleQueue g = new SampleQueue();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
        void a();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Sample {
        public long a;
        public boolean b;
        public Sample c;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SamplePool {
        public Sample a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SampleQueue {
        public final SamplePool a = new Object();
        public Sample b;
        public Sample c;
        public int d;
        public int e;
    }

    public SentryShakeDetector(ILogger iLogger) {
        this.f = iLogger;
    }

    public final void a(Context context) {
        if (this.a == null) {
            this.a = (SensorManager) context.getSystemService("sensor");
        }
        SensorManager sensorManager = this.a;
        if (sensorManager != null && this.b == null) {
            this.b = sensorManager.getDefaultSensor(1, false);
        }
        if (this.b != null && this.c == null) {
            HandlerThread handlerThread = new HandlerThread("sentry-shake");
            this.c = handlerThread;
            handlerThread.start();
            this.d = new Handler(this.c.getLooper());
        }
    }

    public final void b(Activity activity, Listener listener) {
        this.e = listener;
        a(activity);
        SensorManager sensorManager = this.a;
        if (sensorManager == null) {
            this.f.c(SentryLevel.WARNING, "SensorManager is not available. Shake detection disabled.", new Object[0]);
            return;
        }
        Sensor sensor = this.b;
        if (sensor == null) {
            this.f.c(SentryLevel.WARNING, "Accelerometer sensor not available. Shake detection disabled.", new Object[0]);
        } else {
            sensorManager.registerListener(this, sensor, 3, this.d);
        }
    }

    public final void c() {
        this.e = null;
        SensorManager sensorManager = this.a;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
        Handler handler = this.d;
        if (handler != null) {
            handler.post(new b(1, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        boolean z;
        int i;
        int i2;
        Sample sample;
        Sample sample2;
        int i3;
        Sample sample3;
        int i4 = 1;
        if (sensorEvent.sensor.getType() == 1) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            if (Math.sqrt((f3 * f3) + (f2 * f2) + (f * f)) > 13.0d) {
                z = true;
            } else {
                z = false;
            }
            SampleQueue sampleQueue = this.g;
            long j = sensorEvent.timestamp;
            SamplePool samplePool = sampleQueue.a;
            long j2 = j - 500000000;
            while (true) {
                i = sampleQueue.d;
                if (i >= 4 && (sample3 = sampleQueue.b) != null) {
                    i2 = i4;
                    if (j2 - sample3.a <= 0) {
                        break;
                    }
                    if (sample3.b) {
                        sampleQueue.e -= i2;
                    }
                    sampleQueue.d = i - 1;
                    Sample sample4 = sample3.c;
                    sampleQueue.b = sample4;
                    if (sample4 == null) {
                        sampleQueue.c = null;
                    }
                    sample3.c = samplePool.a;
                    samplePool.a = sample3;
                    i4 = i2;
                } else {
                    break;
                }
            }
            i2 = i4;
            Sample sample5 = samplePool.a;
            if (sample5 == null) {
                sample = new Object();
            } else {
                samplePool.a = sample5.c;
                sample = sample5;
            }
            sample.a = j;
            sample.b = z;
            sample.c = null;
            Sample sample6 = sampleQueue.c;
            if (sample6 != null) {
                sample6.c = sample;
            }
            sampleQueue.c = sample;
            if (sampleQueue.b == null) {
                sampleQueue.b = sample;
            }
            sampleQueue.d = i + i2;
            if (z) {
                sampleQueue.e += i2;
            }
            SampleQueue sampleQueue2 = this.g;
            Sample sample7 = sampleQueue2.c;
            if (sample7 != null && (sample2 = sampleQueue2.b) != null && (i3 = sampleQueue2.d) >= 4 && sample7.a - sample2.a >= 250000000 && sampleQueue2.e >= (i3 >> 1) + (i3 >> 2)) {
                while (true) {
                    Sample sample8 = sampleQueue2.b;
                    if (sample8 == null) {
                        break;
                    }
                    sampleQueue2.b = sample8.c;
                    SamplePool samplePool2 = sampleQueue2.a;
                    sample8.c = samplePool2.a;
                    samplePool2.a = sample8;
                }
                sampleQueue2.c = null;
                sampleQueue2.d = 0;
                sampleQueue2.e = 0;
                Listener listener = this.e;
                if (listener != null) {
                    listener.a();
                }
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }
}
