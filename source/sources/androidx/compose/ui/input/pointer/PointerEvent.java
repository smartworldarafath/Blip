package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.view.MotionEvent;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerEvent {
    public final List a;
    public final InternalPointerEvent b;
    public final int c;
    public final int d;
    public final int e;
    public int f;

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0085, code lost:
    
        if (r12 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0087, code lost:
    
        r1 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
    
        if (r12 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
    
        if (r12 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a7, code lost:
    
        if (r12 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00af, code lost:
    
        if (r12 == false) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PointerEvent(List list, InternalPointerEvent internalPointerEvent) {
        int i;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        int actionMasked;
        int classification;
        int classification2;
        MotionEvent a;
        this.a = list;
        this.b = internalPointerEvent;
        int i4 = Build.VERSION.SDK_INT;
        int i5 = 0;
        if (i4 >= 29 && (a = a()) != null) {
            i = a.getClassification();
        } else {
            i = 0;
        }
        this.c = i;
        MotionEvent a2 = a();
        if (a2 != null) {
            i2 = a2.getButtonState();
        } else {
            i2 = 0;
        }
        this.d = i2;
        MotionEvent a3 = a();
        if (a3 != null) {
            i3 = a3.getMetaState();
        } else {
            i3 = 0;
        }
        this.e = i3;
        MotionEvent a4 = a();
        if (a4 != null) {
            if (i4 >= 34) {
                classification2 = a4.getClassification();
                if (classification2 == 3) {
                    z = true;
                    if (i4 >= 34) {
                        classification = a4.getClassification();
                        if (classification == 5) {
                            z2 = true;
                            actionMasked = a4.getActionMasked();
                            if (actionMasked != 0) {
                                if (actionMasked != 1) {
                                    if (actionMasked != 2) {
                                        switch (actionMasked) {
                                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                if (!z) {
                                                    if (!z2) {
                                                    }
                                                    i5 = 7;
                                                    break;
                                                }
                                                i5 = 10;
                                                break;
                                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                if (!z) {
                                                    if (!z2) {
                                                    }
                                                    i5 = 9;
                                                    break;
                                                }
                                                i5 = 12;
                                                break;
                                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                i5 = 6;
                                                break;
                                            case KeyModifiers.a /* 9 */:
                                                i5 = 4;
                                                break;
                                            case KeyModifiers.b /* 10 */:
                                                i5 = 5;
                                                break;
                                        }
                                    }
                                    if (z) {
                                        i5 = 11;
                                    }
                                } else {
                                    if (!z) {
                                        if (z2) {
                                        }
                                        i5 = 2;
                                    }
                                    i5 = 12;
                                }
                            } else {
                                if (!z) {
                                    if (z2) {
                                    }
                                    i5 = 1;
                                }
                                i5 = 10;
                            }
                        }
                    }
                    z2 = false;
                    actionMasked = a4.getActionMasked();
                    if (actionMasked != 0) {
                    }
                }
            }
            z = false;
            if (i4 >= 34) {
            }
            z2 = false;
            actionMasked = a4.getActionMasked();
            if (actionMasked != 0) {
            }
        } else {
            int size = list.size();
            while (i5 < size) {
                PointerInputChange pointerInputChange = (PointerInputChange) list.get(i5);
                if (PointerEventKt.d(pointerInputChange)) {
                    i5 = 2;
                } else if (PointerEventKt.b(pointerInputChange)) {
                    i5 = 1;
                } else {
                    i5++;
                }
            }
            i5 = 3;
        }
        this.f = i5;
    }

    public final MotionEvent a() {
        InternalPointerEvent internalPointerEvent = this.b;
        if (internalPointerEvent != null) {
            return internalPointerEvent.b.b;
        }
        return null;
    }
}
