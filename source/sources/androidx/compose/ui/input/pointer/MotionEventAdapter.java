package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.InputDevice;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.platform.AndroidComposeView;
import defpackage.u2;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MotionEventAdapter {
    public long a;
    public final SparseLongArray b = new SparseLongArray();
    public final SparseBooleanArray c = new SparseBooleanArray();
    public final ArrayList d = new ArrayList();
    public final LongSparseArray e = new LongSparseArray((Object) null);
    public int f = -1;
    public int g = -1;
    public boolean h;
    public boolean i;
    public Offset j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IndirectPointerEventData {
        public final long a;

        public /* synthetic */ IndirectPointerEventData(long j) {
            this.a = j;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof IndirectPointerEventData) {
                if (this.a != ((IndirectPointerEventData) obj).a) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.a);
        }

        public final String toString() {
            return "IndirectPointerEventData(packedValue=" + this.a + ")";
        }
    }

    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseLongArray sparseLongArray = this.b;
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked == 9) {
                int pointerId = motionEvent.getPointerId(0);
                if (sparseLongArray.indexOfKey(pointerId) < 0) {
                    long j = this.a;
                    this.a = 1 + j;
                    sparseLongArray.put(pointerId, j);
                    return;
                }
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (sparseLongArray.indexOfKey(pointerId2) < 0) {
            long j2 = this.a;
            this.a = 1 + j2;
            sparseLongArray.put(pointerId2, j2);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.c.put(pointerId2, true);
            }
        }
    }

    public final void b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1) {
            int toolType = motionEvent.getToolType(0);
            int source = motionEvent.getSource();
            if (toolType == this.f && source == this.g) {
                return;
            }
            this.f = toolType;
            this.g = source;
            this.c.clear();
            this.b.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c3, code lost:
    
        if ((r0 / r4) >= 5.0f) goto L64;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AndroidIndirectPointerEvent c(MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        int i;
        boolean z;
        MotionEvent motionEvent2;
        int i2;
        int i3;
        long j;
        int i4;
        boolean z2;
        SparseLongArray sparseLongArray;
        boolean z3;
        int i5;
        long j2;
        boolean z4;
        long eventTime;
        IndirectPointerEventData indirectPointerEventData;
        long j3;
        boolean z5;
        int i6;
        MotionEventAdapter motionEventAdapter = this;
        MotionEvent motionEvent3 = motionEvent;
        int actionMasked = motionEvent3.getActionMasked();
        b(motionEvent);
        AndroidIndirectPointerEvent androidIndirectPointerEvent = null;
        SparseLongArray sparseLongArray2 = motionEventAdapter.b;
        if (actionMasked == 3) {
            sparseLongArray2.clear();
            motionEventAdapter.c.clear();
            return null;
        }
        a(motionEvent);
        int i7 = 1;
        if (actionMasked != 1) {
            if (actionMasked != 6) {
                i = -1;
            } else {
                i = motionEvent3.getActionIndex();
            }
        } else {
            i = 0;
        }
        if (actionMasked != 0 && actionMasked != 2 && actionMasked != 5) {
            z = false;
        } else {
            z = true;
        }
        int pointerCount = motionEvent3.getPointerCount();
        ArrayList arrayList = new ArrayList(pointerCount);
        int i8 = 0;
        while (i8 < pointerCount) {
            AndroidIndirectPointerEvent androidIndirectPointerEvent2 = androidIndirectPointerEvent;
            int pointerId = motionEvent3.getPointerId(i8);
            int indexOfKey = sparseLongArray2.indexOfKey(pointerId);
            if (indexOfKey >= 0) {
                j = sparseLongArray2.valueAt(indexOfKey);
                i4 = i7;
            } else {
                j = motionEventAdapter.a;
                i4 = i7;
                motionEventAdapter.a = j + 1;
                sparseLongArray2.put(pointerId, j);
            }
            float x = motionEvent3.getX(i8);
            float y = motionEvent3.getY(i8);
            long floatToRawIntBits = (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
            i = i;
            if (i8 != i) {
                z2 = i4;
            } else {
                z2 = 0;
            }
            LongSparseArray longSparseArray = motionEventAdapter.e;
            IndirectPointerEventData indirectPointerEventData2 = (IndirectPointerEventData) longSparseArray.b(j);
            if (i8 == i) {
                longSparseArray.e(j);
                sparseLongArray = sparseLongArray2;
                z4 = 32;
                j2 = 4294967295L;
                i5 = 65535;
            } else {
                if (z) {
                    z3 = 32;
                    i5 = 65535;
                    short intBitsToFloat = (short) Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
                    sparseLongArray = sparseLongArray2;
                    longSparseArray.d(j, new IndirectPointerEventData(1 | ((motionEvent3.getEventTime() & 2147483647L) << i4) | (((((short) Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L))) & 65535) | (intBitsToFloat << 16)) << 32)));
                } else {
                    sparseLongArray = sparseLongArray2;
                    z3 = 32;
                    i5 = 65535;
                }
                j2 = 4294967295L;
                z4 = z3;
            }
            boolean z6 = z4;
            long eventTime2 = motionEvent3.getEventTime();
            float pressure = motionEvent3.getPressure(i8);
            long j4 = j2;
            if (indirectPointerEventData2 != null) {
                eventTime = (indirectPointerEventData2.a >> i4) & 2147483647L;
            } else {
                eventTime = motionEvent3.getEventTime();
            }
            if (indirectPointerEventData2 != null) {
                int i9 = (int) (indirectPointerEventData2.a >>> (z6 ? 1L : 0L));
                indirectPointerEventData = indirectPointerEventData2;
                long floatToRawIntBits2 = Float.floatToRawIntBits((short) (i9 >>> 16));
                j3 = (Float.floatToRawIntBits((short) (i9 & i5)) & j4) | (floatToRawIntBits2 << (z6 ? 1L : 0L));
            } else {
                indirectPointerEventData = indirectPointerEventData2;
                j3 = floatToRawIntBits;
            }
            if (indirectPointerEventData != null) {
                if ((indirectPointerEventData.a & 1) != 0) {
                    i6 = i4;
                } else {
                    i6 = 0;
                }
                z5 = i6;
            } else {
                z5 = 0;
            }
            arrayList.add(new IndirectPointerInputChange(j, eventTime2, floatToRawIntBits, z2, pressure, eventTime, j3, z5));
            i8++;
            motionEventAdapter = this;
            motionEvent3 = motionEvent;
            sparseLongArray2 = sparseLongArray;
            androidIndirectPointerEvent = androidIndirectPointerEvent2;
            i7 = i4;
        }
        AndroidIndirectPointerEvent androidIndirectPointerEvent3 = androidIndirectPointerEvent;
        int i10 = i7;
        f(motionEvent);
        if (indirectPointerEventPrimaryDirectionalMotionAxis != null) {
            i3 = indirectPointerEventPrimaryDirectionalMotionAxis.a;
            motionEvent2 = motionEvent;
        } else {
            motionEvent2 = motionEvent;
            if (motionEvent2.isFromSource(2097152)) {
                InputDevice device = motionEvent2.getDevice();
                if (device != null) {
                    InputDevice.MotionRange motionRange = device.getMotionRange(0);
                    InputDevice.MotionRange motionRange2 = device.getMotionRange(i10);
                    if (motionRange == null || motionRange2 != null) {
                        if (motionRange2 == null || motionRange != null) {
                            if (motionRange != null && motionRange2 != null) {
                                float range = motionRange.getRange();
                                float range2 = motionRange2.getRange();
                                if (range <= range2 || (range2 != 0.0f && range / range2 < 5.0f)) {
                                    if (range2 > range) {
                                        if (range != 0.0f) {
                                        }
                                    }
                                }
                            }
                        }
                        i2 = 2;
                        i3 = i2;
                    }
                    i2 = 1;
                    i3 = i2;
                }
                i2 = 0;
                i3 = i2;
            } else {
                u2.g("MotionEvent must be a touch navigation source");
                return androidIndirectPointerEvent3;
            }
        }
        if (actionMasked == 0 || actionMasked == 1 || actionMasked == 2 || actionMasked != 5) {
        }
        return new AndroidIndirectPointerEvent(arrayList, i3, motionEvent2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
    
        if (r0 == 5) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0097, code lost:
    
        if (r0 == 5) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PointerInputEvent d(MotionEvent motionEvent, AndroidComposeView androidComposeView) {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        int classification;
        int classification2;
        int classification3;
        float rawX;
        float rawX2;
        float rawY;
        float rawY2;
        float rawX3;
        float rawY3;
        int classification4;
        boolean z4;
        boolean z5;
        int classification5;
        int classification6;
        int actionIndex;
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.c;
        if (actionMasked != 3 && actionMasked != 4) {
            b(motionEvent);
            a(motionEvent);
            if (actionMasked != 9 && actionMasked != 7 && actionMasked != 10) {
                z = false;
            } else {
                z = true;
            }
            if (actionMasked == 8) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                sparseBooleanArray.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
            }
            if (actionMasked != 1) {
                if (actionMasked != 6) {
                    actionIndex = -1;
                } else {
                    actionIndex = motionEvent.getActionIndex();
                }
                i = actionIndex;
            } else {
                i = 0;
            }
            ArrayList arrayList = this.d;
            arrayList.clear();
            if (motionEvent.getActionMasked() == 0) {
                if (Build.VERSION.SDK_INT >= 34) {
                    classification5 = motionEvent.getClassification();
                    if (classification5 != 3) {
                        classification6 = motionEvent.getClassification();
                    }
                    z4 = true;
                    if (motionEvent.getButtonState() != 0 && (motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584))) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (!z4 || z5) {
                        this.h = true;
                    }
                }
                z4 = false;
                if (motionEvent.getButtonState() != 0) {
                }
                z5 = false;
                if (!z4) {
                }
                this.h = true;
            }
            if (Build.VERSION.SDK_INT >= 34) {
                classification = motionEvent.getClassification();
                if (classification != 3) {
                    classification4 = motionEvent.getClassification();
                }
                classification2 = motionEvent.getClassification();
                if (classification2 == 5 && motionEvent.getPointerCount() == 1) {
                    if (motionEvent.getActionMasked() == 1) {
                        this.h = false;
                        this.i = false;
                        this.j = null;
                    }
                    f(motionEvent);
                    return null;
                }
                this.i = true;
                if (motionEvent.getActionMasked() == 0) {
                    rawX3 = motionEvent.getRawX(0);
                    rawY3 = motionEvent.getRawY(0);
                    this.j = new Offset((Float.floatToRawIntBits(rawX3) << 32) | (Float.floatToRawIntBits(rawY3) & 4294967295L));
                } else if (motionEvent.getActionMasked() == 5) {
                    classification3 = motionEvent.getClassification();
                    if (classification3 == 5 && motionEvent.getPointerCount() == 2) {
                        rawX = motionEvent.getRawX(0);
                        rawX2 = motionEvent.getRawX(1);
                        rawY = motionEvent.getRawY(0);
                        rawY2 = motionEvent.getRawY(1);
                        this.j = new Offset((Float.floatToRawIntBits((rawX2 + rawX) / 2.0f) << 32) | (Float.floatToRawIntBits((rawY2 + rawY) / 2.0f) & 4294967295L));
                    }
                }
                arrayList.add(e(androidComposeView, motionEvent, this.j, 0, false));
                if (motionEvent.getActionMasked() == 1) {
                    this.h = false;
                    this.i = false;
                    this.j = null;
                }
                f(motionEvent);
                motionEvent.getEventTime();
                return new PointerInputEvent(arrayList, motionEvent);
            }
            this.i = false;
            int pointerCount = motionEvent.getPointerCount();
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (!z && i2 != i && (!z2 || motionEvent.getButtonState() != 0)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                arrayList.add(e(androidComposeView, motionEvent, null, i2, z3));
            }
            if (motionEvent.getActionMasked() == 1) {
            }
            f(motionEvent);
            motionEvent.getEventTime();
            return new PointerInputEvent(arrayList, motionEvent);
        }
        this.b.clear();
        sparseBooleanArray.clear();
        this.h = false;
        this.i = false;
        this.j = null;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b3, code lost:
    
        if (r1 != 4) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0182 A[EDGE_INSN: B:41:0x0182->B:42:0x0182 BREAK  A[LOOP:0: B:20:0x00ea->B:38:0x0179], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PointerInputEventData e(AndroidComposeView androidComposeView, MotionEvent motionEvent, Offset offset, int i, boolean z) {
        long j;
        long j2;
        long q;
        long j3;
        float rawX;
        float rawY;
        long floatToRawIntBits;
        long G;
        boolean z2;
        int toolType;
        int i2;
        int historySize;
        int i3;
        Float f;
        long j4;
        float f2;
        long j5;
        int i4;
        long j6;
        int classification;
        int classification2;
        int i5;
        int classification3;
        boolean z3;
        boolean z4;
        int pointerId = motionEvent.getPointerId(i);
        SparseLongArray sparseLongArray = this.b;
        int indexOfKey = sparseLongArray.indexOfKey(pointerId);
        if (indexOfKey >= 0) {
            j = sparseLongArray.valueAt(indexOfKey);
        } else {
            long j7 = this.a;
            this.a = 1 + j7;
            sparseLongArray.put(pointerId, j7);
            j = j7;
        }
        float pressure = motionEvent.getPressure(i);
        float x = motionEvent.getX(i);
        float y = motionEvent.getY(i);
        long floatToRawIntBits2 = (Float.floatToRawIntBits(y) & 4294967295L) | (Float.floatToRawIntBits(x) << 32);
        if (i == 0) {
            if (offset != null) {
                q = offset.a;
                z4 = 32;
                j2 = 4294967295L;
            } else {
                float rawX2 = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                long floatToRawIntBits3 = Float.floatToRawIntBits(rawX2);
                int floatToRawIntBits4 = Float.floatToRawIntBits(rawY2);
                z4 = 32;
                j2 = 4294967295L;
                q = (floatToRawIntBits3 << 32) | (floatToRawIntBits4 & 4294967295L);
            }
            G = androidComposeView.G(q);
            z3 = z4;
        } else {
            boolean z5 = 32;
            j2 = 4294967295L;
            if (Build.VERSION.SDK_INT >= 29) {
                if (offset == null) {
                    rawX = motionEvent.getRawX(i);
                    rawY = motionEvent.getRawY(i);
                    floatToRawIntBits = (Float.floatToRawIntBits(rawX) << 32) | (Float.floatToRawIntBits(rawY) & 4294967295L);
                } else {
                    floatToRawIntBits = offset.a;
                }
                q = floatToRawIntBits;
                G = androidComposeView.G(q);
                z3 = z5;
            } else {
                q = androidComposeView.q(floatToRawIntBits2);
                j3 = floatToRawIntBits2;
                z2 = z5;
                toolType = motionEvent.getToolType(i);
                if (toolType != 0) {
                    int i6 = 2;
                    if (toolType != 1) {
                        if (toolType != 2) {
                            if (toolType != 3) {
                                i6 = 4;
                            }
                            i2 = i6;
                        } else {
                            i2 = 3;
                        }
                    } else {
                        if ((!motionEvent.isFromSource(8194) && !motionEvent.isFromSource(1048584)) || (this.h && !this.i)) {
                            i2 = 1;
                        }
                        i2 = i6;
                    }
                    ArrayList arrayList = new ArrayList(motionEvent.getHistorySize());
                    historySize = motionEvent.getHistorySize();
                    boolean z6 = z2;
                    i3 = 0;
                    while (true) {
                        f = null;
                        j4 = 0;
                        f2 = 1.0f;
                        if (i3 >= historySize) {
                            break;
                        }
                        float historicalX = motionEvent.getHistoricalX(i, i3);
                        float historicalY = motionEvent.getHistoricalY(i, i3);
                        if ((Float.floatToRawIntBits(historicalX) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(historicalY) & Integer.MAX_VALUE) < 2139095040) {
                            long floatToRawIntBits5 = Float.floatToRawIntBits(historicalX);
                            int floatToRawIntBits6 = Float.floatToRawIntBits(historicalY);
                            i5 = historySize;
                            long j8 = (floatToRawIntBits5 << (z6 ? 1L : 0L)) | (floatToRawIntBits6 & j2);
                            long historicalEventTime = motionEvent.getHistoricalEventTime(i3);
                            float historicalAxisValue = motionEvent.getHistoricalAxisValue(52, i, i3);
                            Float valueOf = Float.valueOf(historicalAxisValue);
                            if (historicalAxisValue > 0.0f) {
                                f = valueOf;
                            }
                            if (f != null) {
                                f2 = f.floatValue();
                            }
                            float f3 = f2;
                            if (Build.VERSION.SDK_INT >= 29) {
                                classification3 = motionEvent.getClassification();
                                if (classification3 == 3) {
                                    float historicalAxisValue2 = motionEvent.getHistoricalAxisValue(50, i, i3);
                                    float historicalAxisValue3 = motionEvent.getHistoricalAxisValue(51, i, i3);
                                    j4 = (Float.floatToRawIntBits(historicalAxisValue2) << (z6 ? 1L : 0L)) | (Float.floatToRawIntBits(historicalAxisValue3) & j2);
                                }
                            }
                            arrayList.add(new HistoricalChange(historicalEventTime, j8, f3, j4, j8));
                        } else {
                            i5 = historySize;
                        }
                        i3++;
                        historySize = i5;
                    }
                    if (motionEvent.getActionMasked() == 8) {
                        float axisValue = motionEvent.getAxisValue(10);
                        float f4 = (-motionEvent.getAxisValue(9)) + 0.0f;
                        j5 = (Float.floatToRawIntBits(axisValue) << (z6 ? 1L : 0L)) | (Float.floatToRawIntBits(f4) & j2);
                    } else {
                        j5 = 0;
                    }
                    i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 29) {
                        classification2 = motionEvent.getClassification();
                        if (classification2 == 5) {
                            float axisValue2 = motionEvent.getAxisValue(52, i);
                            Float valueOf2 = Float.valueOf(axisValue2);
                            if (axisValue2 > 0.0f) {
                                f = valueOf2;
                            }
                            if (f != null) {
                                f2 = f.floatValue();
                            }
                        }
                    }
                    float f5 = f2;
                    if (i4 >= 29) {
                        classification = motionEvent.getClassification();
                        if (classification == 3) {
                            float axisValue3 = motionEvent.getAxisValue(50, i);
                            float axisValue4 = motionEvent.getAxisValue(51, i);
                            j6 = floatToRawIntBits2;
                            j4 = (Float.floatToRawIntBits(axisValue3) << (z6 ? 1L : 0L)) | (Float.floatToRawIntBits(axisValue4) & j2);
                            return new PointerInputEventData(j, motionEvent.getEventTime(), q, j3, z, pressure, i2, this.c.get(motionEvent.getPointerId(i), false), arrayList, j5, f5, j4, j6);
                        }
                    }
                    j6 = floatToRawIntBits2;
                    return new PointerInputEventData(j, motionEvent.getEventTime(), q, j3, z, pressure, i2, this.c.get(motionEvent.getPointerId(i), false), arrayList, j5, f5, j4, j6);
                }
                i2 = 0;
                ArrayList arrayList2 = new ArrayList(motionEvent.getHistorySize());
                historySize = motionEvent.getHistorySize();
                boolean z62 = z2;
                i3 = 0;
                while (true) {
                    f = null;
                    j4 = 0;
                    f2 = 1.0f;
                    if (i3 >= historySize) {
                    }
                    i3++;
                    historySize = i5;
                }
                if (motionEvent.getActionMasked() == 8) {
                }
                i4 = Build.VERSION.SDK_INT;
                if (i4 >= 29) {
                }
                float f52 = f2;
                if (i4 >= 29) {
                }
                j6 = floatToRawIntBits2;
                return new PointerInputEventData(j, motionEvent.getEventTime(), q, j3, z, pressure, i2, this.c.get(motionEvent.getPointerId(i), false), arrayList2, j5, f52, j4, j6);
            }
        }
        j3 = G;
        z2 = z3;
        toolType = motionEvent.getToolType(i);
        if (toolType != 0) {
        }
        i2 = 0;
        ArrayList arrayList22 = new ArrayList(motionEvent.getHistorySize());
        historySize = motionEvent.getHistorySize();
        boolean z622 = z2;
        i3 = 0;
        while (true) {
            f = null;
            j4 = 0;
            f2 = 1.0f;
            if (i3 >= historySize) {
            }
            i3++;
            historySize = i5;
        }
        if (motionEvent.getActionMasked() == 8) {
        }
        i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
        }
        float f522 = f2;
        if (i4 >= 29) {
        }
        j6 = floatToRawIntBits2;
        return new PointerInputEventData(j, motionEvent.getEventTime(), q, j3, z, pressure, i2, this.c.get(motionEvent.getPointerId(i), false), arrayList22, j5, f522, j4, j6);
    }

    public final void f(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.c;
        SparseLongArray sparseLongArray = this.b;
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!sparseBooleanArray.get(pointerId, false)) {
                sparseLongArray.delete(pointerId);
                sparseBooleanArray.delete(pointerId);
            }
        }
        if (sparseLongArray.size() > motionEvent.getPointerCount()) {
            for (int size = sparseLongArray.size() - 1; -1 < size; size--) {
                int keyAt = sparseLongArray.keyAt(size);
                int pointerCount = motionEvent.getPointerCount();
                int i = 0;
                while (true) {
                    if (i < pointerCount) {
                        if (motionEvent.getPointerId(i) == keyAt) {
                            break;
                        } else {
                            i++;
                        }
                    } else {
                        sparseLongArray.removeAt(size);
                        sparseBooleanArray.delete(keyAt);
                        break;
                    }
                }
            }
        }
    }
}
