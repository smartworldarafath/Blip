package androidx.core.app;

import android.app.Person;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Person {
    public String a;
    public String b;
    public String c;
    public boolean d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public String a;
        public String b;
        public String c;
        public boolean d;
        public boolean e;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.app.Person, java.lang.Object] */
        public final Person a() {
            ?? obj = new Object();
            obj.a = this.a;
            obj.b = this.b;
            obj.c = this.c;
            obj.d = this.d;
            obj.e = this.e;
            return obj;
        }
    }

    public final android.app.Person a() {
        return new Person.Builder().setName(this.a).setIcon(null).setUri(this.b).setKey(this.c).setBot(this.d).setImportant(this.e).build();
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof Person)) {
            Person person = (Person) obj;
            String str = this.c;
            String str2 = person.c;
            if (str == null && str2 == null) {
                if (Objects.equals(Objects.toString(this.a), Objects.toString(person.a)) && Objects.equals(this.b, person.b) && Boolean.valueOf(this.d).equals(Boolean.valueOf(person.d)) && Boolean.valueOf(this.e).equals(Boolean.valueOf(person.e))) {
                    return true;
                }
                return false;
            }
            return Objects.equals(str, str2);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.c;
        if (str != null) {
            return str.hashCode();
        }
        return Objects.hash(this.a, this.b, Boolean.valueOf(this.d), Boolean.valueOf(this.e));
    }
}
