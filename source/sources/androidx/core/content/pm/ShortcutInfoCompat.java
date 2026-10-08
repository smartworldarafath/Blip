package androidx.core.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.LocusId;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.activity.ComponentActivity;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ShortcutInfoCompat {
    public Context a;
    public String b;
    public Intent[] c;
    public ComponentName d;
    public CharSequence e;
    public CharSequence f;
    public CharSequence g;
    public IconCompat h;
    public Person[] i;
    public Set j;
    public LocusIdCompat k;
    public boolean l;
    public int m;
    public PersistableBundle n;
    public boolean o = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api33Impl {
        public static void a(ShortcutInfo.Builder builder) {
            builder.setExcludedFromSurfaces(0);
        }
    }

    public static ArrayList a(Context context, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Builder(context, (ShortcutInfo) it.next()).a());
        }
        return arrayList;
    }

    public final ShortcutInfo b() {
        String str;
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.a, this.b).setShortLabel(this.e).setIntents(this.c);
        IconCompat iconCompat = this.h;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.e(this.a));
        }
        if (!TextUtils.isEmpty(this.f)) {
            intents.setLongLabel(this.f);
        }
        if (!TextUtils.isEmpty(this.g)) {
            intents.setDisabledMessage(this.g);
        }
        ComponentName componentName = this.d;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.j;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.m);
        PersistableBundle persistableBundle = this.n;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        int i = 0;
        if (Build.VERSION.SDK_INT >= 29) {
            Person[] personArr = this.i;
            if (personArr != null && personArr.length > 0) {
                int length = personArr.length;
                android.app.Person[] personArr2 = new android.app.Person[length];
                while (i < length) {
                    personArr2[i] = this.i[i].a();
                    i++;
                }
                intents.setPersons(personArr2);
            }
            LocusIdCompat locusIdCompat = this.k;
            if (locusIdCompat != null) {
                intents.setLocusId(locusIdCompat.b);
            }
            intents.setLongLived(this.l);
        } else {
            if (this.n == null) {
                this.n = new PersistableBundle();
            }
            Person[] personArr3 = this.i;
            if (personArr3 != null && personArr3.length > 0) {
                this.n.putInt("extraPersonCount", personArr3.length);
                while (i < this.i.length) {
                    PersistableBundle persistableBundle2 = this.n;
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i2 = i + 1;
                    sb.append(i2);
                    String sb2 = sb.toString();
                    Person person = this.i[i];
                    person.getClass();
                    PersistableBundle persistableBundle3 = new PersistableBundle();
                    String str2 = person.a;
                    if (str2 != null) {
                        str = str2.toString();
                    } else {
                        str = null;
                    }
                    persistableBundle3.putString("name", str);
                    persistableBundle3.putString("uri", person.b);
                    persistableBundle3.putString("key", person.c);
                    persistableBundle3.putBoolean("isBot", person.d);
                    persistableBundle3.putBoolean("isImportant", person.e);
                    persistableBundle2.putPersistableBundle(sb2, persistableBundle3);
                    i = i2;
                }
            }
            LocusIdCompat locusIdCompat2 = this.k;
            if (locusIdCompat2 != null) {
                this.n.putString("extraLocusId", locusIdCompat2.a);
            }
            this.n.putBoolean("extraLongLived", this.l);
            intents.setExtras(this.n);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.a(intents);
        }
        return intents.build();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public final ShortcutInfoCompat a;

        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.core.app.Person$Builder, java.lang.Object] */
        public Builder(Context context, ShortcutInfo shortcutInfo) {
            Person[] personArr;
            String string;
            LocusId locusId;
            LocusId locusId2;
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.a = shortcutInfoCompat;
            shortcutInfoCompat.a = context;
            shortcutInfoCompat.b = shortcutInfo.getId();
            shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.c = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.d = shortcutInfo.getActivity();
            shortcutInfoCompat.e = shortcutInfo.getShortLabel();
            shortcutInfoCompat.f = shortcutInfo.getLongLabel();
            shortcutInfoCompat.g = shortcutInfo.getDisabledMessage();
            shortcutInfo.getDisabledReason();
            shortcutInfoCompat.j = shortcutInfo.getCategories();
            PersistableBundle extras = shortcutInfo.getExtras();
            LocusIdCompat locusIdCompat = null;
            if (extras != null && extras.containsKey("extraPersonCount")) {
                int i = extras.getInt("extraPersonCount");
                personArr = new Person[i];
                int i2 = 0;
                while (i2 < i) {
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i3 = i2 + 1;
                    sb.append(i3);
                    PersistableBundle persistableBundle = extras.getPersistableBundle(sb.toString());
                    ?? obj = new Object();
                    obj.a = persistableBundle.getString("name");
                    obj.b = persistableBundle.getString("uri");
                    obj.c = persistableBundle.getString("key");
                    obj.d = persistableBundle.getBoolean("isBot");
                    obj.e = persistableBundle.getBoolean("isImportant");
                    personArr[i2] = obj.a();
                    i2 = i3;
                }
            } else {
                personArr = null;
            }
            shortcutInfoCompat.i = personArr;
            shortcutInfo.getUserHandle();
            shortcutInfo.getLastChangedTimestamp();
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30) {
                shortcutInfo.isCached();
            }
            shortcutInfo.isDynamic();
            shortcutInfo.isPinned();
            shortcutInfo.isDeclaredInManifest();
            shortcutInfo.isImmutable();
            this.a.o = shortcutInfo.isEnabled();
            shortcutInfo.hasKeyFieldsOnly();
            ShortcutInfoCompat shortcutInfoCompat2 = this.a;
            if (i4 >= 29) {
                locusId = shortcutInfo.getLocusId();
                if (locusId != null) {
                    locusId2 = shortcutInfo.getLocusId();
                    locusIdCompat = LocusIdCompat.a(locusId2);
                }
            } else {
                PersistableBundle extras2 = shortcutInfo.getExtras();
                if (extras2 != null && (string = extras2.getString("extraLocusId")) != null) {
                    locusIdCompat = new LocusIdCompat(string);
                }
            }
            shortcutInfoCompat2.k = locusIdCompat;
            this.a.m = shortcutInfo.getRank();
            this.a.n = shortcutInfo.getExtras();
        }

        public final ShortcutInfoCompat a() {
            ShortcutInfoCompat shortcutInfoCompat = this.a;
            if (!TextUtils.isEmpty(shortcutInfoCompat.e)) {
                Intent[] intentArr = shortcutInfoCompat.c;
                if (intentArr != null && intentArr.length != 0) {
                    return shortcutInfoCompat;
                }
                u2.g("Shortcut must have an intent");
                return null;
            }
            u2.g("Shortcut must have a non-empty label");
            return null;
        }

        public Builder(ComponentActivity componentActivity, String str) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.a = shortcutInfoCompat;
            shortcutInfoCompat.a = componentActivity;
            shortcutInfoCompat.b = str;
        }
    }
}
