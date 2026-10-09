package androidx.customview.widget;

import android.graphics.Rect;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import defpackage.u2;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusStrategy {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BoundsAdapter<T> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface CollectionAdapter<T, V> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SequentialComparator<T> implements Comparator<T> {
        public final Rect j = new Rect();
        public final Rect k = new Rect();
        public final boolean l;
        public final BoundsAdapter m;

        public SequentialComparator(boolean z, BoundsAdapter boundsAdapter) {
            this.l = z;
            this.m = boundsAdapter;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            ExploreByTouchHelper.AnonymousClass1 anonymousClass1 = (ExploreByTouchHelper.AnonymousClass1) this.m;
            anonymousClass1.getClass();
            Rect rect = this.j;
            ((AccessibilityNodeInfoCompat) obj).f(rect);
            anonymousClass1.getClass();
            Rect rect2 = this.k;
            ((AccessibilityNodeInfoCompat) obj2).f(rect2);
            int i = rect.top;
            int i2 = rect2.top;
            if (i >= i2) {
                if (i <= i2) {
                    int i3 = rect.left;
                    int i4 = rect2.left;
                    boolean z = this.l;
                    if (i3 < i4) {
                        if (!z) {
                            return -1;
                        }
                        return 1;
                    }
                    if (i3 > i4) {
                        if (z) {
                            return -1;
                        }
                        return 1;
                    }
                    int i5 = rect.bottom;
                    int i6 = rect2.bottom;
                    if (i5 >= i6) {
                        if (i5 <= i6) {
                            int i7 = rect.right;
                            int i8 = rect2.right;
                            if (i7 < i8) {
                                if (!z) {
                                    return -1;
                                }
                                return 1;
                            }
                            if (i7 > i8) {
                                if (z) {
                                    return -1;
                                }
                                return 1;
                            }
                            return 0;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            }
            return -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r10.bottom <= r12.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0071, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (r9 == 17) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r9 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        r11 = d(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
    
        if (r9 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r9 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        if (r9 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r9 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r9 = r12.bottom;
        r10 = r10.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        if (r11 >= java.lang.Math.max(1, r9 - r10)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        defpackage.u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r9 = r12.right;
        r10 = r10.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r9 = r10.top;
        r10 = r12.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r9 = r10.left;
        r10 = r12.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0031, code lost:
    
        if (r10.right <= r12.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0038, code lost:
    
        if (r10.top >= r12.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003f, code lost:
    
        if (r10.left >= r12.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean b = b(i, rect, rect2);
        if (!b(i, rect, rect3) && b) {
            if (i != 17) {
                if (i != 33) {
                    if (i != 66) {
                        if (i != 130) {
                            u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                            return false;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                return false;
            }
            return true;
        }
        if (rect2.bottom >= rect.top && rect2.top <= rect.bottom) {
            return true;
        }
    }

    public static boolean c(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i == 130) {
                        int i2 = rect.top;
                        int i3 = rect2.top;
                        if ((i2 < i3 || rect.bottom <= i3) && rect.bottom < rect2.bottom) {
                            return true;
                        }
                    } else {
                        u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                } else {
                    int i4 = rect.left;
                    int i5 = rect2.left;
                    if ((i4 < i5 || rect.right <= i5) && rect.right < rect2.right) {
                        return true;
                    }
                }
            } else {
                int i6 = rect.bottom;
                int i7 = rect2.bottom;
                if ((i6 > i7 || rect.top >= i7) && rect.top > rect2.top) {
                    return true;
                }
            }
        } else {
            int i8 = rect.right;
            int i9 = rect2.right;
            if ((i8 > i9 || rect.left >= i9) && rect.left > rect2.left) {
                return true;
            }
        }
        return false;
    }

    public static int d(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i == 130) {
                        i2 = rect2.top;
                        i3 = rect.bottom;
                    } else {
                        u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                } else {
                    i2 = rect2.left;
                    i3 = rect.right;
                }
            } else {
                i2 = rect.top;
                i3 = rect2.bottom;
            }
        } else {
            i2 = rect.left;
            i3 = rect2.right;
        }
        return Math.max(0, i2 - i3);
    }

    public static int e(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }
}
