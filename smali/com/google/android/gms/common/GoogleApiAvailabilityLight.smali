.class public abstract Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const v0, 0xbdfcb8

    .line 4
    .line 5
    .line 6
    sput v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    const-string v0, "com.google.android.gms"

    .line 3
    .line 4
    if-eq p1, p0, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    const-string p0, "package"

    .line 15
    .line 16
    invoke-static {p0, v0, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    if-eqz p2, :cond_3

    .line 32
    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/util/DeviceProperties;->a(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 41
    .line 42
    const-string p1, "com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "com.google.android.wearable.app"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "gcore_"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "-"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p1, p1, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/4 p3, 0x0

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance p1, Landroid/content/Intent;

    .line 125
    .line 126
    const-string p2, "android.intent.action.VIEW"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "market://details"

    .line 132
    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-string p3, "id"

    .line 142
    .line 143
    invoke-virtual {p2, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-nez p3, :cond_7

    .line 152
    .line 153
    const-string p3, "pcampaignid"

    .line 154
    .line 155
    invoke-virtual {p2, p3, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string p0, "com.android.vending"

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const/high16 p0, 0x80000

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    return-object p1
.end method

.method public b(Landroid/content/Context;I)I
    .locals 11

    .line 1
    sget-object p0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f110037

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    const-string p0, "GooglePlayServicesUtil"

    .line 15
    .line 16
    const-string v0, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "com.google.android.gms"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/4 v0, 0x1

    .line 32
    if-nez p0, :cond_5

    .line 33
    .line 34
    sget-object p0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/internal/zzae;->a:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    sget-boolean v1, Lcom/google/android/gms/common/internal/zzae;->b:Z

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    sput-boolean v0, Lcom/google/android/gms/common/internal/zzae;->b:Z

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    iget-object v2, v2, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/16 v3, 0x80

    .line 73
    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    :try_start_4
    const-string v2, "com.google.app.id"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    const-string v2, "com.google.android.gms.version"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sput v1, Lcom/google/android/gms/common/internal/zzae;->c:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    :try_start_5
    const-string v2, "MetadataValueReader"

    .line 100
    .line 101
    const-string v3, "This should never happen."

    .line 102
    .line 103
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :goto_2
    sget p0, Lcom/google/android/gms/common/internal/zzae;->c:I

    .line 108
    .line 109
    if-eqz p0, :cond_4

    .line 110
    .line 111
    const v1, 0xbdfcb8

    .line 112
    .line 113
    .line 114
    if-ne p0, v1, :cond_3

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    .line 118
    .line 119
    sget p2, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    .line 120
    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/lit8 v0, v0, 0x68

    .line 138
    .line 139
    add-int/2addr v0, v1

    .line 140
    add-int/lit16 v0, v0, 0xc2

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .line 146
    .line 147
    const-string v0, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p2, " but found "

    .line 156
    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p0, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    .line 164
    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_4
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    .line 177
    .line 178
    const-string p1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    .line 179
    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 185
    throw p1

    .line 186
    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->a(Landroid/content/Context;)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    const/4 v1, 0x0

    .line 191
    if-nez p0, :cond_7

    .line 192
    .line 193
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->c:Ljava/lang/Boolean;

    .line 194
    .line 195
    if-nez p0, :cond_6

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string v2, "android.hardware.type.embedded"

    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->c:Ljava/lang/Boolean;

    .line 212
    .line 213
    :cond_6
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->c:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_7

    .line 220
    .line 221
    move p0, v0

    .line 222
    goto :goto_5

    .line 223
    :cond_7
    move p0, v1

    .line 224
    :goto_5
    if-ltz p2, :cond_18

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    const/16 v4, 0x9

    .line 235
    .line 236
    if-eqz p0, :cond_8

    .line 237
    .line 238
    :try_start_7
    const-string v5, "com.android.vending"

    .line 239
    .line 240
    const v6, 0x8002040

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v5
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 247
    goto :goto_6

    .line 248
    :catch_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    const-string p2, " requires the Google Play Store, but it is missing."

    .line 253
    .line 254
    const-string v2, "GooglePlayServicesUtil"

    .line 255
    .line 256
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    goto/16 :goto_f

    .line 264
    .line 265
    :cond_8
    const/4 v5, 0x0

    .line 266
    :goto_6
    :try_start_8
    const-string v6, "com.google.android.gms"

    .line 267
    .line 268
    const v7, 0x8000040

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v6
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    .line 275
    const-class v7, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 276
    .line 277
    monitor-enter v7

    .line 278
    :try_start_9
    sget-object v8, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 279
    .line 280
    if-nez v8, :cond_a

    .line 281
    .line 282
    sget-object v8, Lcom/google/android/gms/common/zzo;->a:Lcom/google/android/gms/common/zzh;

    .line 283
    .line 284
    const-class v8, Lcom/google/android/gms/common/zzo;

    .line 285
    .line 286
    monitor-enter v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 287
    :try_start_a
    sget-object v9, Lcom/google/android/gms/common/zzo;->c:Landroid/content/Context;

    .line 288
    .line 289
    if-nez v9, :cond_9

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    sput-object v9, Lcom/google/android/gms/common/zzo;->c:Landroid/content/Context;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 296
    .line 297
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 298
    goto :goto_7

    .line 299
    :catchall_2
    move-exception p0

    .line 300
    goto :goto_8

    .line 301
    :cond_9
    :try_start_c
    const-string v9, "GoogleCertificates"

    .line 302
    .line 303
    const-string v10, "GoogleCertificates has been initialized already"

    .line 304
    .line 305
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 306
    .line 307
    .line 308
    :try_start_d
    monitor-exit v8

    .line 309
    :goto_7
    new-instance v8, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 310
    .line 311
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 315
    .line 316
    .line 317
    sput-object v8, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 318
    .line 319
    goto :goto_9

    .line 320
    :catchall_3
    move-exception p0

    .line 321
    goto/16 :goto_e

    .line 322
    .line 323
    :goto_8
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 324
    :try_start_f
    throw p0

    .line 325
    :cond_a
    :goto_9
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 326
    invoke-static {v6}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-nez v7, :cond_b

    .line 331
    .line 332
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    const-string p2, " requires Google Play services, but their signature is invalid."

    .line 337
    .line 338
    const-string v2, "GooglePlayServicesUtil"

    .line 339
    .line 340
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    goto/16 :goto_f

    .line 348
    .line 349
    :cond_b
    if-eqz p0, :cond_c

    .line 350
    .line 351
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v5}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;)Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-nez v7, :cond_c

    .line 359
    .line 360
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    const-string p2, " requires Google Play Store, but its signature is invalid."

    .line 365
    .line 366
    const-string v2, "GooglePlayServicesUtil"

    .line 367
    .line 368
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    goto/16 :goto_f

    .line 376
    .line 377
    :cond_c
    if-eqz p0, :cond_d

    .line 378
    .line 379
    if-eqz v5, :cond_d

    .line 380
    .line 381
    iget-object p0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 382
    .line 383
    aget-object p0, p0, v1

    .line 384
    .line 385
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 386
    .line 387
    aget-object v5, v5, v1

    .line 388
    .line 389
    invoke-virtual {p0, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result p0

    .line 393
    if-nez p0, :cond_d

    .line 394
    .line 395
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    const-string p2, " requires Google Play Store, but its signature doesn\'t match that of Google Play services."

    .line 400
    .line 401
    const-string v2, "GooglePlayServicesUtil"

    .line 402
    .line 403
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    goto/16 :goto_f

    .line 411
    .line 412
    :cond_d
    iget p0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 413
    .line 414
    const/4 v4, -0x1

    .line 415
    if-ne p0, v4, :cond_e

    .line 416
    .line 417
    move v5, v4

    .line 418
    goto :goto_a

    .line 419
    :cond_e
    div-int/lit16 v5, p0, 0x3e8

    .line 420
    .line 421
    :goto_a
    if-ne p2, v4, :cond_f

    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_f
    div-int/lit16 v4, p2, 0x3e8

    .line 425
    .line 426
    :goto_b
    if-ge v5, v4, :cond_10

    .line 427
    .line 428
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    add-int/lit8 v3, v3, 0x31

    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    add-int/2addr v3, v4

    .line 451
    add-int/lit8 v3, v3, 0xb

    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    add-int/2addr v3, v4

    .line 460
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 461
    .line 462
    .line 463
    const-string v3, "Google Play services out of date for "

    .line 464
    .line 465
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v2, ".  Requires "

    .line 472
    .line 473
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string p2, " but found "

    .line 480
    .line 481
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    const-string p2, "GooglePlayServicesUtil"

    .line 492
    .line 493
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    const/4 v4, 0x2

    .line 497
    goto :goto_f

    .line 498
    :cond_10
    iget-object p0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 499
    .line 500
    if-nez p0, :cond_11

    .line 501
    .line 502
    :try_start_10
    const-string p0, "com.google.android.gms"

    .line 503
    .line 504
    invoke-virtual {v3, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 505
    .line 506
    .line 507
    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_2

    .line 508
    goto :goto_d

    .line 509
    :catch_2
    move-exception p0

    .line 510
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p2

    .line 514
    const-string v2, " requires Google Play services, but they\'re missing when getting application info."

    .line 515
    .line 516
    const-string v3, "GooglePlayServicesUtil"

    .line 517
    .line 518
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    invoke-static {v3, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .line 524
    .line 525
    :goto_c
    move v4, v0

    .line 526
    goto :goto_f

    .line 527
    :cond_11
    :goto_d
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 528
    .line 529
    if-nez p0, :cond_12

    .line 530
    .line 531
    const/4 v4, 0x3

    .line 532
    goto :goto_f

    .line 533
    :cond_12
    move v4, v1

    .line 534
    goto :goto_f

    .line 535
    :goto_e
    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 536
    throw p0

    .line 537
    :catch_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    const-string p2, " requires Google Play services, but they are missing."

    .line 542
    .line 543
    const-string v2, "GooglePlayServicesUtil"

    .line 544
    .line 545
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    goto :goto_c

    .line 553
    :goto_f
    const/16 p0, 0x12

    .line 554
    .line 555
    if-ne v4, p0, :cond_13

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_13
    if-ne v4, v0, :cond_16

    .line 559
    .line 560
    const-string p2, "com.google.android.gms"

    .line 561
    .line 562
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    .line 571
    .line 572
    .line 573
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 574
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_15

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 589
    .line 590
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_14

    .line 599
    .line 600
    goto :goto_10

    .line 601
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    const/16 v0, 0x2000

    .line 606
    .line 607
    :try_start_13
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_4

    .line 612
    .line 613
    move v0, p1

    .line 614
    goto :goto_10

    .line 615
    :catch_4
    :cond_16
    move v0, v1

    .line 616
    :goto_10
    if-eqz v0, :cond_17

    .line 617
    .line 618
    return p0

    .line 619
    :cond_17
    return v4

    .line 620
    :cond_18
    invoke-static {}, Lfe;->h()V

    .line 621
    .line 622
    .line 623
    return v1
.end method
