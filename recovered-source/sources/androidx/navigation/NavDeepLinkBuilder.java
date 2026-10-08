package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.app.TaskStackBuilder;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import defpackage.k8;
import defpackage.la;
import defpackage.le;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavDeepLinkBuilder {
    public final Context a;
    public final NavContext b;
    public final Intent c;
    public final NavGraph d;
    public final ArrayList e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DeepLinkDestination {
        public final int a;
        public final Bundle b;

        public DeepLinkDestination(int i, Bundle bundle) {
            this.a = i;
            this.b = bundle;
        }
    }

    public NavDeepLinkBuilder(NavHostController navHostController) {
        Object next;
        Intent launchIntentForPackage;
        navHostController.getClass();
        Context context = navHostController.a;
        context.getClass();
        this.a = context;
        this.b = new NavContext(context);
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new TransformingSequence(SequencesKt.c(context, new la(13)), new la(14)), new le(18)));
        if (!filteringSequence$iterator$1.hasNext()) {
            next = null;
        } else {
            next = filteringSequence$iterator$1.next();
        }
        Activity activity = (Activity) next;
        if (activity != null) {
            launchIntentForPackage = new Intent(context, activity.getClass());
        } else {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
            }
        }
        launchIntentForPackage.addFlags(268468224);
        this.c = launchIntentForPackage;
        this.e = new ArrayList();
        this.d = navHostController.b.g();
    }

    public final TaskStackBuilder a() {
        NavGraph navGraph = this.d;
        if (navGraph != null) {
            ArrayList arrayList = this.e;
            if (!arrayList.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                Iterator it = arrayList.iterator();
                NavDestination navDestination = null;
                while (true) {
                    int i = 0;
                    if (it.hasNext()) {
                        DeepLinkDestination deepLinkDestination = (DeepLinkDestination) it.next();
                        int i2 = deepLinkDestination.a;
                        Bundle bundle = deepLinkDestination.b;
                        NavDestination b = b(i2);
                        if (b != null) {
                            int[] c = b.c(navDestination);
                            int length = c.length;
                            while (i < length) {
                                arrayList2.add(Integer.valueOf(c[i]));
                                arrayList3.add(bundle);
                                i++;
                            }
                            navDestination = b;
                        } else {
                            int i3 = NavDestination.n;
                            u2.m("Navigation destination ", NavDestination.Companion.a(this.b, i2), " cannot be found in the navigation graph ", navGraph);
                            return null;
                        }
                    } else {
                        int[] W = CollectionsKt.W(arrayList2);
                        Intent intent = this.c;
                        intent.putExtra("android-support-nav:controller:deepLinkIds", W);
                        intent.putParcelableArrayListExtra("android-support-nav:controller:deepLinkArgs", arrayList3);
                        TaskStackBuilder taskStackBuilder = new TaskStackBuilder(this.a);
                        taskStackBuilder.b(new Intent(intent));
                        ArrayList arrayList4 = taskStackBuilder.j;
                        int size = arrayList4.size();
                        while (i < size) {
                            Intent intent2 = (Intent) arrayList4.get(i);
                            if (intent2 != null) {
                                intent2.putExtra("android-support-nav:controller:deepLinkIntent", intent);
                            }
                            i++;
                        }
                        return taskStackBuilder;
                    }
                }
            } else {
                u2.l("You must call setDestination() or addDestination() before constructing the deep link");
                return null;
            }
        } else {
            u2.l("You must call setGraph() before constructing the deep link");
            return null;
        }
    }

    public final NavDestination b(int i) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this.d;
        navGraph.getClass();
        arrayDeque.addLast(navGraph);
        while (!arrayDeque.isEmpty()) {
            NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
            if (navDestination.k.d == i) {
                return navDestination;
            }
            if (navDestination instanceof NavGraph) {
                Iterator<NavDestination> it = ((NavGraph) navDestination).iterator();
                while (true) {
                    NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
                    if (navGraphImpl$iterator$1.hasNext()) {
                        arrayDeque.addLast((NavDestination) navGraphImpl$iterator$1.next());
                    }
                }
            }
        }
        return null;
    }

    public final void c() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            int i = ((DeepLinkDestination) it.next()).a;
            if (b(i) == null) {
                int i2 = NavDestination.n;
                k8.m("Navigation destination ", NavDestination.Companion.a(this.b, i), " cannot be found in the navigation graph ", this.d);
                return;
            }
        }
    }
}
