package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.core.os.LocaleListCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zaf {
    public static final SimpleArrayMap a = new SimpleArrayMap(0);
    public static Locale b;

    public static String a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return resources.getString(R.string.common_google_play_services_update_title);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
            case 18:
                return null;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return e(context, "common_google_play_services_invalid_account_title");
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return e(context, "common_google_play_services_network_error_title");
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case KeyModifiers.a /* 9 */:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case KeyModifiers.b /* 10 */:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case KeyModifiers.c /* 12 */:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 22);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return e(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return e(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String b(Context context, int i) {
        Resources resources = context.getResources();
        String c = c(context);
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 7) {
                            if (i != 9) {
                                if (i != 20) {
                                    switch (i) {
                                        case 16:
                                            return d(context, "common_google_play_services_api_unavailable_text", c);
                                        case 17:
                                            return d(context, "common_google_play_services_sign_in_failed_text", c);
                                        case 18:
                                            return resources.getString(R.string.common_google_play_services_updating_text, c);
                                        default:
                                            return resources.getString(R.string.common_google_play_services_unknown_issue, c);
                                    }
                                }
                                return d(context, "common_google_play_services_restricted_profile_text", c);
                            }
                            return resources.getString(R.string.common_google_play_services_unsupported_text, c);
                        }
                        return d(context, "common_google_play_services_network_error_text", c);
                    }
                    return d(context, "common_google_play_services_invalid_account_text", c);
                }
                return resources.getString(R.string.common_google_play_services_enable_text, c);
            }
            if (DeviceProperties.a(context)) {
                return resources.getString(R.string.common_google_play_services_wear_update_text);
            }
            return resources.getString(R.string.common_google_play_services_update_text, c);
        }
        return resources.getString(R.string.common_google_play_services_install_text, c);
    }

    public static String c(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = Wrappers.a(context).a;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            if (TextUtils.isEmpty(str)) {
                return packageName;
            }
            return str;
        }
    }

    public static String d(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String e = e(context, str);
        if (e == null) {
            e = resources.getString(R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, e, str2);
    }

    public static String e(Context context, String str) {
        Resources resources;
        SimpleArrayMap simpleArrayMap = a;
        synchronized (simpleArrayMap) {
            try {
                Locale a2 = LocaleListCompat.d(context.getResources().getConfiguration().getLocales()).a(0);
                if (!a2.equals(b)) {
                    simpleArrayMap.clear();
                    b = a2;
                }
                String str2 = (String) simpleArrayMap.get(str);
                if (str2 != null) {
                    return str2;
                }
                int i = GooglePlayServicesUtil.c;
                try {
                    resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
                } catch (PackageManager.NameNotFoundException unused) {
                    resources = null;
                }
                if (resources != null) {
                    int identifier = resources.getIdentifier(str, "string", "com.google.android.gms");
                    if (identifier == 0) {
                        StringBuilder sb = new StringBuilder(str.length() + 18);
                        sb.append("Missing resource: ");
                        sb.append(str);
                        Log.w("GoogleApiAvailability", sb.toString());
                    } else {
                        String string = resources.getString(identifier);
                        if (TextUtils.isEmpty(string)) {
                            StringBuilder sb2 = new StringBuilder(str.length() + 20);
                            sb2.append("Got empty resource: ");
                            sb2.append(str);
                            Log.w("GoogleApiAvailability", sb2.toString());
                        } else {
                            simpleArrayMap.put(str, string);
                            return string;
                        }
                    }
                }
                return null;
            } finally {
            }
        }
    }
}
