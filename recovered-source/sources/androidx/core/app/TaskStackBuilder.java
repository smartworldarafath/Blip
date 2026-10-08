package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {
    public final ArrayList j = new ArrayList();
    public final Context k;

    public TaskStackBuilder(Context context) {
        this.k = context;
    }

    public final void b(Intent intent) {
        ComponentName component = intent.getComponent();
        Context context = this.k;
        if (component == null) {
            component = intent.resolveActivity(context.getPackageManager());
        }
        ArrayList arrayList = this.j;
        if (component != null) {
            int size = arrayList.size();
            try {
                for (Intent a = NavUtils.a(context, component); a != null; a = NavUtils.a(context, a.getComponent())) {
                    arrayList.add(size, a);
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        arrayList.add(intent);
    }

    public final void c() {
        ArrayList arrayList = this.j;
        if (!arrayList.isEmpty()) {
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            this.k.startActivities(intentArr, null);
            return;
        }
        u2.l("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    public final Iterator<Intent> iterator() {
        return this.j.iterator();
    }
}
