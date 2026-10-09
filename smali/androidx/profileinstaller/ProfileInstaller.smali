.class public abstract Landroidx/profileinstaller/ProfileInstaller;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
    }
.end annotation


# static fields
.field public static final a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public static final b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 7
    .line 8
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v8, 0x7

    .line 37
    const/4 v9, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_12

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v3, "ProfileInstaller"

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_0

    .line 63
    .line 64
    :catch_0
    move v0, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v14, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    move-wide/from16 v16, v14

    .line 84
    .line 85
    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 86
    .line 87
    cmp-long v0, v16, v13

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v0, v9

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-interface {v5, v7, v12}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v13, v0

    .line 103
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_5
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Skipping profile installation for "

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_36

    .line 140
    .line 141
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "Installing profile for "

    .line 144
    .line 145
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    new-instance v7, Ljava/io/File;

    .line 163
    .line 164
    new-instance v0, Ljava/io/File;

    .line 165
    .line 166
    const-string v3, "/data/misc/profiles/cur/0"

    .line 167
    .line 168
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v2, "primary.prof"

    .line 172
    .line 173
    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 177
    .line 178
    const-string v0, "dexopt/baseline.prof"

    .line 179
    .line 180
    move-object v3, v4

    .line 181
    move-object/from16 v4, p1

    .line 182
    .line 183
    invoke-direct/range {v2 .. v7}, Landroidx/profileinstaller/DeviceProfileWriter;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/io/File;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->c:[B

    .line 187
    .line 188
    if-nez v4, :cond_5

    .line 189
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/4 v3, 0x3

    .line 197
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    :goto_4
    const/4 v7, 0x1

    .line 201
    goto/16 :goto_33

    .line 202
    .line 203
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    const/4 v13, 0x4

    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2, v13, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    const/4 v6, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-nez v6, :cond_6

    .line 227
    .line 228
    invoke-virtual {v2, v13, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_1
    const/4 v7, 0x1

    .line 233
    goto/16 :goto_32

    .line 234
    .line 235
    :goto_5
    iput-boolean v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 236
    .line 237
    const/4 v6, 0x6

    .line 238
    :try_start_7
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 242
    move-object v7, v0

    .line 243
    goto :goto_7

    .line 244
    :catch_2
    move-exception v0

    .line 245
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catch_3
    move-exception v0

    .line 250
    invoke-interface {v5, v6, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_6
    move-object v7, v12

    .line 254
    :goto_7
    const-string v14, "Invalid magic"

    .line 255
    .line 256
    sget-object v15, Landroidx/profileinstaller/ProfileTranscoder;->a:[B

    .line 257
    .line 258
    const/16 v6, 0x8

    .line 259
    .line 260
    if-eqz v7, :cond_9

    .line 261
    .line 262
    :try_start_8
    invoke-static {v7, v13}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-static {v7, v13}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v9, v2, Landroidx/profileinstaller/DeviceProfileWriter;->e:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {v7, v0, v9}, Landroidx/profileinstaller/ProfileTranscoder;->g(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/DexProfileData;

    .line 279
    .line 280
    .line 281
    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 282
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 283
    .line 284
    .line 285
    goto :goto_c

    .line 286
    :catch_4
    move-exception v0

    .line 287
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_c

    .line 291
    :catchall_2
    move-exception v0

    .line 292
    move-object v1, v0

    .line 293
    goto :goto_d

    .line 294
    :catch_5
    move-exception v0

    .line 295
    goto :goto_8

    .line 296
    :catch_6
    move-exception v0

    .line 297
    goto :goto_a

    .line 298
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 304
    :goto_8
    :try_start_b
    invoke-interface {v5, v6, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 305
    .line 306
    .line 307
    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :catch_7
    move-exception v0

    .line 312
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :goto_a
    :try_start_d
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :goto_b
    move-object v9, v12

    .line 321
    :goto_c
    iput-object v9, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 322
    .line 323
    goto :goto_f

    .line 324
    :goto_d
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 325
    .line 326
    .line 327
    goto :goto_e

    .line 328
    :catch_8
    move-exception v0

    .line 329
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :goto_e
    throw v1

    .line 333
    :cond_9
    :goto_f
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 334
    .line 335
    if-eqz v0, :cond_d

    .line 336
    .line 337
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 338
    .line 339
    const/16 v9, 0x1f

    .line 340
    .line 341
    if-lt v7, v9, :cond_d

    .line 342
    .line 343
    :try_start_f
    const-string v7, "dexopt/baseline.profm"

    .line 344
    .line 345
    invoke-virtual {v2, v3, v7}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 346
    .line 347
    .line 348
    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9

    .line 349
    if-eqz v3, :cond_b

    .line 350
    .line 351
    :try_start_10
    sget-object v7, Landroidx/profileinstaller/ProfileTranscoder;->b:[B

    .line 352
    .line 353
    invoke-static {v3, v13}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eqz v7, :cond_a

    .line 362
    .line 363
    invoke-static {v3, v13}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v3, v7, v4, v0}, Landroidx/profileinstaller/ProfileTranscoder;->d(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/DexProfileData;)[Landroidx/profileinstaller/DexProfileData;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iput-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 372
    .line 373
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_9

    .line 374
    .line 375
    .line 376
    move-object v0, v2

    .line 377
    goto :goto_16

    .line 378
    :catch_9
    move-exception v0

    .line 379
    goto :goto_12

    .line 380
    :catch_a
    move-exception v0

    .line 381
    goto :goto_13

    .line 382
    :catch_b
    move-exception v0

    .line 383
    goto :goto_14

    .line 384
    :catchall_3
    move-exception v0

    .line 385
    move-object v4, v0

    .line 386
    goto :goto_10

    .line 387
    :cond_a
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 393
    :goto_10
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 394
    .line 395
    .line 396
    goto :goto_11

    .line 397
    :catchall_4
    move-exception v0

    .line 398
    :try_start_14
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    :goto_11
    throw v4

    .line 402
    :cond_b
    if-eqz v3, :cond_c

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_9

    .line 405
    .line 406
    .line 407
    goto :goto_15

    .line 408
    :goto_12
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 409
    .line 410
    invoke-interface {v5, v6, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    goto :goto_15

    .line 414
    :goto_13
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto :goto_15

    .line 418
    :goto_14
    const/16 v3, 0x9

    .line 419
    .line 420
    invoke-interface {v5, v3, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_c
    :goto_15
    move-object v0, v12

    .line 424
    :goto_16
    if-eqz v0, :cond_d

    .line 425
    .line 426
    move-object v2, v0

    .line 427
    :cond_d
    iget-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 428
    .line 429
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 430
    .line 431
    iget-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->c:[B

    .line 432
    .line 433
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 434
    .line 435
    if-eqz v0, :cond_11

    .line 436
    .line 437
    if-nez v4, :cond_e

    .line 438
    .line 439
    goto :goto_1c

    .line 440
    :cond_e
    iget-boolean v7, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 441
    .line 442
    if-eqz v7, :cond_10

    .line 443
    .line 444
    :try_start_15
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 445
    .line 446
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_c

    .line 447
    .line 448
    .line 449
    :try_start_16
    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 453
    .line 454
    .line 455
    invoke-static {v7, v4, v0}, Landroidx/profileinstaller/ProfileTranscoder;->i(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/DexProfileData;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_f

    .line 460
    .line 461
    const/4 v0, 0x5

    .line 462
    invoke-interface {v3, v0, v12}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 466
    .line 467
    :try_start_17
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_c

    .line 468
    .line 469
    .line 470
    goto :goto_1c

    .line 471
    :catch_c
    move-exception v0

    .line 472
    goto :goto_19

    .line 473
    :catch_d
    move-exception v0

    .line 474
    goto :goto_1a

    .line 475
    :catchall_5
    move-exception v0

    .line 476
    move-object v4, v0

    .line 477
    goto :goto_17

    .line 478
    :cond_f
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iput-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 483
    .line 484
    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_c

    .line 485
    .line 486
    .line 487
    goto :goto_1b

    .line 488
    :goto_17
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 489
    .line 490
    .line 491
    goto :goto_18

    .line 492
    :catchall_6
    move-exception v0

    .line 493
    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 494
    .line 495
    .line 496
    :goto_18
    throw v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 497
    :goto_19
    invoke-interface {v3, v6, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    goto :goto_1b

    .line 501
    :goto_1a
    invoke-interface {v3, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :goto_1b
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 505
    .line 506
    goto :goto_1c

    .line 507
    :cond_10
    invoke-static {v5}, Lu2;->l(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    return-void

    .line 511
    :cond_11
    :goto_1c
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 512
    .line 513
    if-nez v0, :cond_12

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    const/4 v7, 0x1

    .line 517
    goto/16 :goto_30

    .line 518
    .line 519
    :cond_12
    iget-boolean v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 520
    .line 521
    if-eqz v3, :cond_18

    .line 522
    .line 523
    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 524
    .line 525
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 526
    .line 527
    .line 528
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    .line 529
    .line 530
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->d:Ljava/io/File;

    .line 531
    .line 532
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 533
    .line 534
    .line 535
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 536
    .line 537
    .line 538
    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 539
    :try_start_1f
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 540
    .line 541
    .line 542
    move-result-object v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 543
    if-eqz v6, :cond_14

    .line 544
    .line 545
    :try_start_20
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_14

    .line 550
    .line 551
    const/16 v0, 0x200

    .line 552
    .line 553
    new-array v0, v0, [B

    .line 554
    .line 555
    :goto_1d
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    if-lez v7, :cond_13

    .line 560
    .line 561
    const/4 v9, 0x0

    .line 562
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 563
    .line 564
    .line 565
    goto :goto_1d

    .line 566
    :cond_13
    const/4 v7, 0x1

    .line 567
    :try_start_21
    invoke-virtual {v2, v7, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 568
    .line 569
    .line 570
    :try_start_22
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 571
    .line 572
    .line 573
    :try_start_23
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 574
    .line 575
    .line 576
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 577
    .line 578
    .line 579
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 580
    .line 581
    .line 582
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 583
    .line 584
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 585
    .line 586
    move v6, v7

    .line 587
    goto/16 :goto_30

    .line 588
    .line 589
    :catchall_7
    move-exception v0

    .line 590
    goto/16 :goto_31

    .line 591
    .line 592
    :catch_e
    move-exception v0

    .line 593
    goto/16 :goto_2c

    .line 594
    .line 595
    :catch_f
    move-exception v0

    .line 596
    :goto_1e
    const/4 v3, 0x6

    .line 597
    goto/16 :goto_2e

    .line 598
    .line 599
    :catchall_8
    move-exception v0

    .line 600
    :goto_1f
    move-object v4, v0

    .line 601
    goto :goto_2a

    .line 602
    :catchall_9
    move-exception v0

    .line 603
    :goto_20
    move-object v5, v0

    .line 604
    goto :goto_28

    .line 605
    :catchall_a
    move-exception v0

    .line 606
    :goto_21
    move-object v6, v0

    .line 607
    goto :goto_26

    .line 608
    :catchall_b
    move-exception v0

    .line 609
    :goto_22
    move-object v9, v0

    .line 610
    goto :goto_24

    .line 611
    :cond_14
    const/4 v7, 0x1

    .line 612
    goto :goto_23

    .line 613
    :catchall_c
    move-exception v0

    .line 614
    const/4 v7, 0x1

    .line 615
    goto :goto_22

    .line 616
    :goto_23
    :try_start_26
    new-instance v0, Ljava/io/IOException;

    .line 617
    .line 618
    const-string v9, "Unable to acquire a lock on the underlying file channel."

    .line 619
    .line 620
    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 624
    :goto_24
    if-eqz v6, :cond_15

    .line 625
    .line 626
    :try_start_27
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 627
    .line 628
    .line 629
    goto :goto_25

    .line 630
    :catchall_d
    move-exception v0

    .line 631
    :try_start_28
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 632
    .line 633
    .line 634
    :cond_15
    :goto_25
    throw v9
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 635
    :catchall_e
    move-exception v0

    .line 636
    const/4 v7, 0x1

    .line 637
    goto :goto_21

    .line 638
    :goto_26
    if-eqz v5, :cond_16

    .line 639
    .line 640
    :try_start_29
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 641
    .line 642
    .line 643
    goto :goto_27

    .line 644
    :catchall_f
    move-exception v0

    .line 645
    :try_start_2a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 646
    .line 647
    .line 648
    :cond_16
    :goto_27
    throw v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    .line 649
    :catchall_10
    move-exception v0

    .line 650
    const/4 v7, 0x1

    .line 651
    goto :goto_20

    .line 652
    :goto_28
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    .line 653
    .line 654
    .line 655
    goto :goto_29

    .line 656
    :catchall_11
    move-exception v0

    .line 657
    :try_start_2c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 658
    .line 659
    .line 660
    :goto_29
    throw v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    .line 661
    :catchall_12
    move-exception v0

    .line 662
    const/4 v7, 0x1

    .line 663
    goto :goto_1f

    .line 664
    :goto_2a
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 665
    .line 666
    .line 667
    goto :goto_2b

    .line 668
    :catchall_13
    move-exception v0

    .line 669
    :try_start_2e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 670
    .line 671
    .line 672
    :goto_2b
    throw v4
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 673
    :catch_10
    move-exception v0

    .line 674
    const/4 v7, 0x1

    .line 675
    goto :goto_2c

    .line 676
    :catch_11
    move-exception v0

    .line 677
    const/4 v7, 0x1

    .line 678
    goto :goto_1e

    .line 679
    :goto_2c
    :try_start_2f
    invoke-virtual {v2, v8, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    .line 680
    .line 681
    .line 682
    :goto_2d
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 683
    .line 684
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 685
    .line 686
    goto :goto_2f

    .line 687
    :goto_2e
    :try_start_30
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 688
    .line 689
    .line 690
    goto :goto_2d

    .line 691
    :goto_2f
    const/4 v6, 0x0

    .line 692
    :goto_30
    if-eqz v6, :cond_17

    .line 693
    .line 694
    invoke-static {v10, v11}, Landroidx/profileinstaller/ProfileInstaller;->a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 695
    .line 696
    .line 697
    :cond_17
    move v9, v6

    .line 698
    goto :goto_34

    .line 699
    :goto_31
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 700
    .line 701
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 702
    .line 703
    throw v0

    .line 704
    :cond_18
    invoke-static {v5}, Lu2;->l(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    return-void

    .line 708
    :goto_32
    invoke-virtual {v2, v13, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 709
    .line 710
    .line 711
    :goto_33
    const/4 v9, 0x0

    .line 712
    :goto_34
    if-eqz v9, :cond_19

    .line 713
    .line 714
    if-eqz p3, :cond_19

    .line 715
    .line 716
    move v9, v7

    .line 717
    goto :goto_35

    .line 718
    :cond_19
    const/4 v9, 0x0

    .line 719
    :goto_35
    invoke-static {v1, v9}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 720
    .line 721
    .line 722
    :goto_36
    return-void

    .line 723
    :catch_12
    move-exception v0

    .line 724
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    const/4 v9, 0x0

    .line 728
    invoke-static {v1, v9}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 729
    .line 730
    .line 731
    return-void
.end method
