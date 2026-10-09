package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.GroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import defpackage.f7;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposeStackTraceBuilder {
    public final ArrayList a = new ArrayList();

    public final boolean a(int i, GroupSourceInformation groupSourceInformation, Object obj) {
        ArrayList arrayList = ((GapGroupSourceInformation) groupSourceInformation).a;
        if (arrayList == null) {
            b(i, groupSourceInformation, null);
            return true;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            Object obj2 = arrayList.get(i2);
            if (obj2 instanceof Anchor) {
                if (obj2.equals(obj)) {
                    b(0, groupSourceInformation, obj2);
                    return true;
                }
            } else if (obj2 instanceof GroupSourceInformation) {
                if (a(i, (GroupSourceInformation) obj2, obj)) {
                    b(0, groupSourceInformation, obj2);
                    return true;
                }
            } else {
                f7.i(obj2, "Unexpected child source info ");
                break;
            }
            i2++;
        }
        return false;
    }

    public final void b(int i, GroupSourceInformation groupSourceInformation, Object obj) {
        this.a.add(new ComposeStackTraceFrame(i, null, null));
    }

    public final void c(int i, Object obj, GapGroupSourceInformation gapGroupSourceInformation, Object obj2) {
        if (!Intrinsics.a(obj, Composer.Companion.a)) {
            return;
        }
        b(i, gapGroupSourceInformation, null);
    }
}
