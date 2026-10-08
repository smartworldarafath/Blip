package io.sentry.android.core.internal.threaddump;

import defpackage.jb;
import io.sentry.SentryLevel;
import io.sentry.SentryLockReason;
import io.sentry.SentryOptions;
import io.sentry.SentryStackTraceFactory;
import io.sentry.android.core.internal.util.NativeEventUtils;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ThreadDumpParser {
    public static final Pattern f = Pattern.compile("\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)");
    public static final Pattern g = Pattern.compile("\"(.*)\" (.*) ?sysTid=(\\d+)");
    public static final Pattern h = Pattern.compile(" *(?:native: )?#(\\d+) \\S+ ([0-9a-fA-F]+)\\s+((.*?)(?:\\s+\\(deleted\\))?(?:\\s+\\(offset (.*?)\\))?)(?:\\s+\\((?:\\?\\?\\?|(.*?)(?:\\+(\\d+))?)\\))?(?:\\s+\\(BuildId: (.*?)\\))?");
    public static final Pattern i = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)");
    public static final Pattern j = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)");
    public static final Pattern k = Pattern.compile(" *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    public static final Pattern l = Pattern.compile(" *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    public static final Pattern m = Pattern.compile(" *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    public static final Pattern n = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");
    public static final Pattern o = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))");
    public static final Pattern p = Pattern.compile(" *- waiting to lock an unknown object");
    public static final Pattern q = Pattern.compile("\\s+");
    public final SentryOptions a;
    public final boolean b;
    public final SentryStackTraceFactory c;
    public final HashMap d = new HashMap();
    public final ArrayList e = new ArrayList();

    public ThreadDumpParser(SentryOptions sentryOptions, boolean z) {
        this.a = sentryOptions;
        this.b = z;
        this.c = new SentryStackTraceFactory(sentryOptions);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [io.sentry.SentryLockReason, java.lang.Object] */
    public static void a(SentryThread sentryThread, SentryLockReason sentryLockReason) {
        Map map = sentryThread.s;
        if (map == null) {
            map = new HashMap();
        }
        SentryLockReason sentryLockReason2 = (SentryLockReason) map.get(sentryLockReason.k);
        if (sentryLockReason2 != null) {
            sentryLockReason2.j = Math.max(sentryLockReason2.j, sentryLockReason.j);
        } else {
            String str = sentryLockReason.k;
            ?? obj = new Object();
            obj.j = sentryLockReason.j;
            obj.k = str;
            obj.l = sentryLockReason.l;
            obj.m = sentryLockReason.m;
            obj.n = sentryLockReason.n;
            obj.o = CollectionUtils.a(sentryLockReason.o);
            map.put(str, obj);
        }
        sentryThread.s = map;
    }

    public static Long b(Matcher matcher, int i2) {
        String group = matcher.group(i2);
        if (group != null && group.length() != 0) {
            return Long.valueOf(Long.parseLong(group));
        }
        return null;
    }

    public static boolean c(Matcher matcher, String str) {
        matcher.reset(str);
        return matcher.matches();
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x01d1, code lost:
    
        if (r2 >= 0) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0184 A[EDGE_INSN: B:126:0x0184->B:125:0x0184 BREAK  A[LOOP:1: B:39:0x016e->B:54:0x03d8], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0172  */
    /* JADX WARN: Type inference failed for: r0v15, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v17, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v18, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v19, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v20, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v15, types: [io.sentry.SentryLockReason, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v26, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v22, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5, types: [io.sentry.protocol.SentryThread, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(Lines lines) {
        int i2;
        Pattern pattern;
        String str;
        Matcher matcher;
        Pattern pattern2;
        Matcher matcher2;
        Object obj;
        String str2;
        Matcher matcher3;
        Matcher matcher4;
        Matcher matcher5;
        SentryStackFrame sentryStackFrame;
        String str3;
        Matcher matcher6;
        Matcher matcher7;
        Matcher matcher8;
        Integer num;
        String a;
        Integer num2;
        boolean z;
        ThreadDumpParser threadDumpParser = this;
        Lines lines2 = lines;
        int i3 = lines2.b;
        Pattern pattern3 = f;
        String str4 = "";
        Matcher matcher9 = pattern3.matcher("");
        Pattern pattern4 = g;
        Matcher matcher10 = pattern4.matcher("");
        while (lines2.c < i3) {
            Line a2 = lines2.a();
            String str5 = "Internal error while parsing thread dump.";
            SentryOptions sentryOptions = threadDumpParser.a;
            if (a2 == null) {
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                return;
            }
            String str6 = a2.a;
            if (!c(matcher9, str6) && !c(matcher10, str6)) {
                i2 = i3;
                pattern = pattern3;
                str = str4;
                matcher = matcher9;
                pattern2 = pattern4;
                matcher2 = matcher10;
            } else {
                lines2.c--;
                ?? obj2 = new Object();
                Matcher matcher11 = pattern3.matcher(str4);
                Matcher matcher12 = pattern4.matcher(str4);
                if (lines2.c < i3) {
                    Line a3 = lines2.a();
                    if (a3 == null) {
                        sentryOptions.getLogger().c(SentryLevel.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                    } else {
                        String str7 = a3.a;
                        if (c(matcher11, str7)) {
                            Long b = b(matcher11, 4);
                            if (b == null) {
                                sentryOptions.getLogger().c(SentryLevel.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                            } else {
                                obj2.j = b;
                                obj2.l = matcher11.group(1);
                                String group = matcher11.group(5);
                                if (group != null) {
                                    if (group.contains(" ")) {
                                        obj2.m = group.substring(0, group.indexOf(32));
                                    } else {
                                        obj2.m = group;
                                    }
                                }
                                str2 = obj2.l;
                                if (str2 != null) {
                                    boolean equals = str2.equals("main");
                                    obj2.q = Boolean.valueOf(equals);
                                    obj2.n = Boolean.valueOf(equals);
                                    if (equals && !threadDumpParser.b) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    obj2.o = Boolean.valueOf(z);
                                }
                                SentryOptions sentryOptions2 = threadDumpParser.c.a;
                                ArrayList arrayList = new ArrayList();
                                Matcher matcher13 = h.matcher(str4);
                                matcher3 = i.matcher(str4);
                                Matcher matcher14 = j.matcher(str4);
                                pattern = pattern3;
                                Matcher matcher15 = k.matcher(str4);
                                matcher = matcher9;
                                Matcher matcher16 = m.matcher(str4);
                                pattern2 = pattern4;
                                Matcher matcher17 = l.matcher(str4);
                                matcher2 = matcher10;
                                Matcher matcher18 = o.matcher(str4);
                                Matcher matcher19 = n.matcher(str4);
                                matcher4 = p.matcher(str4);
                                str = str4;
                                matcher5 = q.matcher(str4);
                                sentryStackFrame = null;
                                while (true) {
                                    if (lines2.c >= i3) {
                                        break;
                                    }
                                    Line a4 = lines2.a();
                                    if (a4 == null) {
                                        sentryOptions.getLogger().c(SentryLevel.WARNING, str5, new Object[0]);
                                        break;
                                    }
                                    String str8 = a4.a;
                                    i2 = i3;
                                    if (c(matcher3, str8)) {
                                        ?? obj3 = new Object();
                                        str3 = str5;
                                        String g2 = jb.g(matcher3.group(1), ".", matcher3.group(2));
                                        obj3.o = g2;
                                        obj3.n = matcher3.group(3);
                                        obj3.m = matcher3.group(4);
                                        String group2 = matcher3.group(5);
                                        if (group2 != null && group2.length() != 0) {
                                            int parseInt = Integer.parseInt(group2);
                                            num2 = Integer.valueOf(parseInt);
                                        }
                                        num2 = null;
                                        obj3.p = num2;
                                        obj3.t = SentryStackTraceFactory.b(g2, sentryOptions2.getInAppIncludes(), sentryOptions2.getInAppExcludes());
                                        arrayList.add(obj3);
                                        matcher6 = matcher3;
                                        sentryStackFrame = obj3;
                                    } else {
                                        str3 = str5;
                                        if (c(matcher13, str8)) {
                                            ?? obj4 = new Object();
                                            obj4.u = matcher13.group(3);
                                            obj4.n = matcher13.group(6);
                                            String group3 = matcher13.group(7);
                                            if (group3 != null && group3.length() != 0) {
                                                num = Integer.valueOf(Integer.parseInt(group3));
                                            } else {
                                                num = null;
                                            }
                                            obj4.p = num;
                                            obj4.z = "0x" + matcher13.group(2);
                                            obj4.w = "native";
                                            String group4 = matcher13.group(8);
                                            if (group4 == null) {
                                                a = null;
                                            } else {
                                                a = NativeEventUtils.a(group4);
                                            }
                                            if (a != null) {
                                                HashMap hashMap = threadDumpParser.d;
                                                if (!hashMap.containsKey(a)) {
                                                    DebugImage debugImage = new DebugImage();
                                                    debugImage.setDebugId(a);
                                                    matcher6 = matcher3;
                                                    debugImage.setType("elf");
                                                    debugImage.setCodeFile(matcher13.group(4));
                                                    debugImage.setCodeId(group4);
                                                    hashMap.put(a, debugImage);
                                                } else {
                                                    matcher6 = matcher3;
                                                }
                                                obj4.A = "rel:".concat(a);
                                            } else {
                                                matcher6 = matcher3;
                                            }
                                            arrayList.add(obj4);
                                            sentryStackFrame = null;
                                        } else {
                                            matcher6 = matcher3;
                                            if (c(matcher14, str8)) {
                                                ?? obj5 = new Object();
                                                String g3 = jb.g(matcher14.group(1), ".", matcher14.group(2));
                                                obj5.o = g3;
                                                obj5.n = matcher14.group(3);
                                                obj5.t = SentryStackTraceFactory.b(g3, sentryOptions2.getInAppIncludes(), sentryOptions2.getInAppExcludes());
                                                obj5.v = Boolean.TRUE;
                                                arrayList.add(obj5);
                                                sentryStackFrame = obj5;
                                            } else {
                                                sentryStackFrame = sentryStackFrame;
                                                if (c(matcher15, str8)) {
                                                    if (sentryStackFrame != null) {
                                                        ?? obj6 = new Object();
                                                        obj6.j = 1;
                                                        obj6.k = matcher15.group(1);
                                                        obj6.l = matcher15.group(2);
                                                        obj6.m = matcher15.group(3);
                                                        sentryStackFrame.E = obj6;
                                                        a(obj2, obj6);
                                                        sentryStackFrame = sentryStackFrame;
                                                    }
                                                } else {
                                                    sentryStackFrame = sentryStackFrame;
                                                    if (c(matcher16, str8)) {
                                                        if (sentryStackFrame != null) {
                                                            ?? obj7 = new Object();
                                                            obj7.j = 2;
                                                            obj7.k = matcher16.group(1);
                                                            obj7.l = matcher16.group(2);
                                                            obj7.m = matcher16.group(3);
                                                            sentryStackFrame.E = obj7;
                                                            a(obj2, obj7);
                                                            sentryStackFrame = sentryStackFrame;
                                                        }
                                                    } else {
                                                        sentryStackFrame = sentryStackFrame;
                                                        if (c(matcher17, str8)) {
                                                            if (sentryStackFrame != null) {
                                                                ?? obj8 = new Object();
                                                                obj8.j = 4;
                                                                obj8.k = matcher17.group(1);
                                                                obj8.l = matcher17.group(2);
                                                                obj8.m = matcher17.group(3);
                                                                sentryStackFrame.E = obj8;
                                                                a(obj2, obj8);
                                                                sentryStackFrame = sentryStackFrame;
                                                            }
                                                        } else {
                                                            if (c(matcher18, str8)) {
                                                                if (sentryStackFrame != null) {
                                                                    ?? obj9 = new Object();
                                                                    obj9.j = 8;
                                                                    obj9.k = matcher18.group(1);
                                                                    obj9.l = matcher18.group(2);
                                                                    obj9.m = matcher18.group(3);
                                                                    obj9.n = b(matcher18, 4);
                                                                    sentryStackFrame.E = obj9;
                                                                    a(obj2, obj9);
                                                                }
                                                                matcher7 = matcher4;
                                                                matcher8 = matcher5;
                                                            } else {
                                                                if (c(matcher19, str8)) {
                                                                    if (sentryStackFrame != null) {
                                                                        ?? obj10 = new Object();
                                                                        obj10.j = 8;
                                                                        obj10.k = matcher19.group(1);
                                                                        obj10.l = matcher19.group(2);
                                                                        obj10.m = matcher19.group(3);
                                                                        sentryStackFrame.E = obj10;
                                                                        a(obj2, obj10);
                                                                    }
                                                                    matcher7 = matcher4;
                                                                } else {
                                                                    matcher7 = matcher4;
                                                                    if (c(matcher7, str8)) {
                                                                        if (sentryStackFrame != null) {
                                                                            ?? obj11 = new Object();
                                                                            obj11.j = 8;
                                                                            sentryStackFrame.E = obj11;
                                                                            a(obj2, obj11);
                                                                        }
                                                                    } else {
                                                                        if (str8.length() == 0) {
                                                                            break;
                                                                        }
                                                                        matcher8 = matcher5;
                                                                        if (c(matcher8, str8)) {
                                                                            break;
                                                                        }
                                                                    }
                                                                }
                                                                matcher8 = matcher5;
                                                            }
                                                            lines2 = lines;
                                                            matcher4 = matcher7;
                                                            matcher5 = matcher8;
                                                            matcher3 = matcher6;
                                                            str5 = str3;
                                                            i3 = i2;
                                                            threadDumpParser = this;
                                                            sentryStackFrame = sentryStackFrame;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    matcher7 = matcher4;
                                    matcher8 = matcher5;
                                    lines2 = lines;
                                    matcher4 = matcher7;
                                    matcher5 = matcher8;
                                    matcher3 = matcher6;
                                    str5 = str3;
                                    i3 = i2;
                                    threadDumpParser = this;
                                    sentryStackFrame = sentryStackFrame;
                                }
                                i2 = i3;
                                Collections.reverse(arrayList);
                                SentryStackTrace sentryStackTrace = new SentryStackTrace(arrayList);
                                sentryStackTrace.l = Boolean.TRUE;
                                obj2.r = sentryStackTrace;
                                obj = obj2;
                            }
                        } else {
                            if (c(matcher12, str7)) {
                                Long b2 = b(matcher12, 3);
                                if (b2 == null) {
                                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                                } else {
                                    obj2.j = b2;
                                    obj2.l = matcher12.group(1);
                                }
                            }
                            str2 = obj2.l;
                            if (str2 != null) {
                            }
                            SentryOptions sentryOptions22 = threadDumpParser.c.a;
                            ArrayList arrayList2 = new ArrayList();
                            Matcher matcher132 = h.matcher(str4);
                            matcher3 = i.matcher(str4);
                            Matcher matcher142 = j.matcher(str4);
                            pattern = pattern3;
                            Matcher matcher152 = k.matcher(str4);
                            matcher = matcher9;
                            Matcher matcher162 = m.matcher(str4);
                            pattern2 = pattern4;
                            Matcher matcher172 = l.matcher(str4);
                            matcher2 = matcher10;
                            Matcher matcher182 = o.matcher(str4);
                            Matcher matcher192 = n.matcher(str4);
                            matcher4 = p.matcher(str4);
                            str = str4;
                            matcher5 = q.matcher(str4);
                            sentryStackFrame = null;
                            while (true) {
                                if (lines2.c >= i3) {
                                }
                                lines2 = lines;
                                matcher4 = matcher7;
                                matcher5 = matcher8;
                                matcher3 = matcher6;
                                str5 = str3;
                                i3 = i2;
                                threadDumpParser = this;
                                sentryStackFrame = sentryStackFrame;
                            }
                            i2 = i3;
                            Collections.reverse(arrayList2);
                            SentryStackTrace sentryStackTrace2 = new SentryStackTrace(arrayList2);
                            sentryStackTrace2.l = Boolean.TRUE;
                            obj2.r = sentryStackTrace2;
                            obj = obj2;
                        }
                        threadDumpParser = this;
                        if (obj == null) {
                            threadDumpParser.e.add(obj);
                        }
                    }
                }
                i2 = i3;
                pattern = pattern3;
                str = str4;
                matcher = matcher9;
                pattern2 = pattern4;
                matcher2 = matcher10;
                obj = null;
                threadDumpParser = this;
                if (obj == null) {
                }
            }
            lines2 = lines;
            pattern3 = pattern;
            matcher9 = matcher;
            pattern4 = pattern2;
            matcher10 = matcher2;
            str4 = str;
            i3 = i2;
        }
    }
}
