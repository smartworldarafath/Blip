package androidx.compose.ui.hapticfeedback;

import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformHapticFeedback implements HapticFeedback {
    public final View a;

    public PlatformHapticFeedback(View view) {
        this.a = view;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        if (r7 != 17) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i) {
        int i2;
        int i3 = 0;
        if (i == 16) {
            i2 = 16;
        } else if (i == 6) {
            i2 = 6;
        } else if (i == 13) {
            i2 = 13;
        } else {
            i2 = 23;
            if (i != 23) {
                i2 = 3;
                if (i != 3) {
                    if (i == 0) {
                        i2 = 0;
                    } else if (i == 17) {
                        i2 = 17;
                    } else {
                        i2 = 27;
                        if (i != 27) {
                            i2 = 26;
                            if (i != 26) {
                                i2 = 9;
                                if (i != 9) {
                                    i2 = 22;
                                    if (i != 22) {
                                        i2 = 21;
                                        if (i != 21) {
                                            if (i == 1) {
                                                i2 = 1;
                                            } else {
                                                i2 = -1;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        Field field = ViewCompat.a;
        if (i2 == -1) {
            i3 = -1;
        } else {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 < 34) {
                switch (i2) {
                    case 21:
                    case 23:
                    case 26:
                        i2 = 6;
                        break;
                    case 22:
                    case 24:
                    case 27:
                        i2 = 4;
                        break;
                    case 25:
                        i2 = 0;
                        break;
                }
            }
            if (i4 < 30) {
                if (i2 != 12) {
                    if (i2 != 13) {
                        if (i2 != 16) {
                        }
                    } else {
                        i3 = 6;
                    }
                }
                i3 = 1;
            }
            i3 = i2;
        }
        if (i3 == -1) {
            return;
        }
        this.a.performHapticFeedback(i3);
    }
}
