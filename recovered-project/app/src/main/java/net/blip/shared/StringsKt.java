package net.blip.shared;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.datastore.preferences.PreferencesProto$Value;
import bsarchive.Metadata;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.Charsets;
import net.blip.android.FlavorAndroid;
import net.blip.android.HardwareInfoAndroid;
import net.blip.libblip.Flavor;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.Metadata_DerivedKt;
import net.blip.libblip.Peer;
import net.blip.libblip.Platform;
import net.blip.libblip.SemanticVersion;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.TransferTitleData;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringsKt {
    public static final String a(Composer composer) {
        String str;
        String str2;
        String str3 = Strings.a;
        GapComposer gapComposer = (GapComposer) composer;
        HardwareInfo hardwareInfo = (HardwareInfo) gapComposer.j(ProvideSharedCompositionLocalsKt.c);
        SemanticVersion semanticVersion = ((FlavorAndroid) ((Flavor) gapComposer.j(ProvideSharedCompositionLocalsKt.a))).b;
        User b = State_DerivedKt.b(ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer));
        String str4 = null;
        if (b != null) {
            str = b.n;
        } else {
            str = null;
        }
        hardwareInfo.getClass();
        if (str == null) {
            str = "<logged out>";
        }
        if (semanticVersion != null) {
            str2 = semanticVersion.a();
        } else {
            str2 = "missing";
        }
        HardwareInfoAndroid hardwareInfoAndroid = (HardwareInfoAndroid) hardwareInfo;
        String y = CollectionsKt.y(ArraysKt.p(new String[]{hardwareInfoAndroid.c, hardwareInfoAndroid.d}), " ", null, null, null, 62);
        if (kotlin.text.StringsKt.t(y)) {
            y = null;
        }
        if (y == null) {
            y = "Unknown";
        }
        String str5 = hardwareInfoAndroid.e;
        String str6 = hardwareInfoAndroid.f;
        if (str6 != null) {
            str4 = q.i(" (", str6, ")");
        }
        StringBuilder o = q.o("\n    \n    \n    \n    Email: ", str, "\n    App Version: ", str2, "\n    Device Model: ");
        o.append(y);
        o.append("\n    Operating System: ");
        o.append(str5 + str4);
        o.append("\n    ");
        String V = kotlin.text.StringsKt.V(o.toString());
        Charset charset = Charsets.b;
        String encode = URLEncoder.encode("Feedback :)", charset.name());
        String encode2 = URLEncoder.encode(V, charset.name());
        StringBuilder o2 = q.o("mailto:", Strings.e, "?subject=", encode, "&body=");
        o2.append(encode2);
        return o2.toString();
    }

    public static final String b(Transfer transfer, Peer peer) {
        String str = Strings.a;
        transfer.getClass();
        TransferErr d = Transfer_DerivedKt.d(transfer);
        if (d == null) {
            return "<unknown>";
        }
        if (!d.equals(transfer.u)) {
            peer = null;
        }
        switch (d.m.ordinal()) {
            case 0:
                if (peer != null) {
                    return q.i("Unknown error occurred on ", peer.b(), "'s device");
                }
                return "Unknown error occurred on your device";
            case 1:
                Platform.j.getClass();
                Platform.Companion companion = Platform.j;
                if (peer != null) {
                    return peer.b() + "'s storage is currently full";
                }
                return "Storage full. Free up space and resume";
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                if (peer != null) {
                    return peer.b() + "'s device is not allowing Blip to save files";
                }
                Platform.j.getClass();
                Platform.Companion companion2 = Platform.j;
                return "Blip can't access the receive folder. Choose it again in settings, then resume.";
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (peer != null) {
                    return q.i("Previously sent data is missing on ", peer.b(), "'s device");
                }
                return "Previously received data is missing";
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                if (peer != null) {
                    return peer.b() + "'s destination folder not found. They can resume when they create it.";
                }
                return "Destination folder not found. Ensure it exists and try again.";
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                if (peer != null) {
                    return peer.b() + "'s disk not found. They can resume when they connect it.";
                }
                return "Destination disk not found. Ensure it's connected and try again.";
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                if (peer != null) {
                    return q.i("Previously sent data is corrupted on ", peer.b(), "'s device");
                }
                return "Previously received data is corrupted";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (peer != null) {
                    return peer.b() + "'s device isn't allowing Blip to read data";
                }
                return "Blip doesn't have permission to read the data you're sending";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (peer != null) {
                    return q.i("Files are missing from ", peer.b(), "'s device");
                }
                Platform.j.getClass();
                Platform.Companion companion3 = Platform.j;
                return "Files you're sending are missing from storage";
            case KeyModifiers.a /* 9 */:
                if (peer != null) {
                    return peer.b() + "'s external disk not currently connected";
                }
                return "The external disk you're sending from is not connected";
            case KeyModifiers.b /* 10 */:
                if (peer != null) {
                    return q.i("Files you're receiving have been modified or damaged on ", peer.b(), "'s device.");
                }
                return "Files you're sending have been modified or damaged.";
            case 11:
                return "Connection lost. Will resume when possible.";
            case KeyModifiers.c /* 12 */:
                if (peer != null) {
                    return "Couldn't connect. The other side needs to check their network and resume.";
                }
                return "Couldn’t connect. Check networks on both sides and resume.";
            case 13:
            case 15:
                if (peer != null) {
                    return jb.f("Cancelled by ", peer.b());
                }
                return "You cancelled";
            case 14:
                if (peer != null) {
                    return jb.f("Declined by ", peer.b());
                }
                return "You declined";
            case 16:
                if (peer != null) {
                    return jb.f("Paused by ", peer.b());
                }
                return "You paused";
            default:
                k8.e();
                return null;
        }
    }

    public static final String c(TransferTitleData transferTitleData) {
        String str;
        String str2 = Strings.a;
        int i = transferTitleData.a;
        if (i == 0) {
            return "No Items";
        }
        if (i == 1 && (str = transferTitleData.b) != null) {
            return str;
        }
        return i + " Items";
    }

    public static String d(Map map) {
        String str = Strings.a;
        map.getClass();
        return c(new TransferTitleData(map.size(), (String) CollectionsKt.r(map.keySet())));
    }

    public static String e(Transfer transfer) {
        String str = Strings.a;
        transfer.getClass();
        Metadata metadata = transfer.p;
        if (metadata == null) {
            metadata = new Metadata();
        }
        List Q = CollectionsKt.Q(Metadata_DerivedKt.c(metadata));
        return c(new TransferTitleData(Q.size(), (String) CollectionsKt.t(Q)));
    }
}
