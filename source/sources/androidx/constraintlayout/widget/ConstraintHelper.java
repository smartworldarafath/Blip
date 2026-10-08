package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {
    public int[] j;
    public int k;
    public Context l;
    public androidx.constraintlayout.solver.widgets.Barrier m;
    public String n;
    public HashMap o;

    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(String str) {
        ConstraintLayout constraintLayout;
        int i;
        Object obj;
        HashMap hashMap;
        Context context = this.l;
        if (str.length() != 0 && context != null) {
            String trim = str.trim();
            if (getParent() instanceof ConstraintLayout) {
            }
            if (getParent() instanceof ConstraintLayout) {
                constraintLayout = (ConstraintLayout) getParent();
            } else {
                constraintLayout = null;
            }
            if (isInEditMode() && constraintLayout != null) {
                if (trim != null && (hashMap = constraintLayout.v) != null && hashMap.containsKey(trim)) {
                    obj = constraintLayout.v.get(trim);
                } else {
                    obj = null;
                }
                if (obj instanceof Integer) {
                    i = ((Integer) obj).intValue();
                    if (i == 0 && constraintLayout != null) {
                        i = c(constraintLayout, trim);
                    }
                    if (i == 0) {
                        try {
                            i = R$id.class.getField(trim).getInt(null);
                        } catch (Exception unused) {
                        }
                    }
                    if (i == 0) {
                        i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
                    }
                    if (i == 0) {
                        this.o.put(Integer.valueOf(i), trim);
                        b(i);
                        return;
                    } else {
                        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
                        return;
                    }
                }
            }
            i = 0;
            if (i == 0) {
                i = c(constraintLayout, trim);
            }
            if (i == 0) {
            }
            if (i == 0) {
            }
            if (i == 0) {
            }
        }
    }

    public final void b(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.k + 1;
        int[] iArr = this.j;
        if (i2 > iArr.length) {
            this.j = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.j;
        int i3 = this.k;
        iArr2[i3] = i;
        this.k = i3 + 1;
    }

    public final int c(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str != null && (resources = this.l.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = constraintLayout.getChildAt(i);
                if (childAt.getId() != -1) {
                    try {
                        str2 = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        str2 = null;
                    }
                    if (str.equals(str2)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    public final void d() {
        if (this.m != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).k0 = this.m;
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.j, this.k);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.n;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.n = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.k = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                a(str.substring(i));
                return;
            } else {
                a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.n = null;
        this.k = 0;
        for (int i : iArr) {
            b(i);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }
}
