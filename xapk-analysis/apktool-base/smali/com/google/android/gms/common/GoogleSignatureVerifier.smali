.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# direct methods
.method public static final a(Landroid/content/pm/PackageInfo;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_a

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "com.android.vending"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "com.google.android.gms"

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v1, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    :cond_3
    move v1, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_4
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 37
    .line 38
    and-int/lit16 v1, v1, 0x81

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_2
    if-eqz v1, :cond_5

    .line 44
    .line 45
    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/zzn;->c:Lcom/google/android/gms/internal/common/zzah;

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    sget-object v3, Lcom/google/android/gms/common/zzn;->b:Lcom/google/android/gms/internal/common/zzah;

    .line 49
    .line 50
    :goto_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 51
    .line 52
    if-eqz v4, :cond_8

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_8

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_6

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    sget-object v5, Lcom/google/android/gms/internal/common/zzah;->k:Lcom/google/android/gms/internal/common/zzal;

    .line 68
    .line 69
    new-instance v5, Lcom/google/android/gms/internal/common/zzad;

    .line 70
    .line 71
    invoke-direct {v5}, Lcom/google/android/gms/internal/common/zzad;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    array-length v6, v4

    .line 79
    move v7, v0

    .line 80
    :goto_4
    if-ge v7, v6, :cond_7

    .line 81
    .line 82
    aget-object v8, v4, v7

    .line 83
    .line 84
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/common/zzad;->a(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/common/zzad;->b()Lcom/google/android/gms/internal/common/zzah;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    goto :goto_6

    .line 99
    :cond_8
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/common/zzah;->i()Lcom/google/android/gms/internal/common/zzah;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :goto_6
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_b

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzah;->f()Lcom/google/android/gms/internal/common/zzah;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    move v6, v0

    .line 118
    :goto_7
    if-ge v6, v5, :cond_d

    .line 119
    .line 120
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, [B

    .line 125
    .line 126
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/common/zzah;->k(I)Lcom/google/android/gms/internal/common/zzal;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    add-int/lit8 v10, v6, 0x1

    .line 135
    .line 136
    if-eqz v9, :cond_a

    .line 137
    .line 138
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, [B

    .line 143
    .line 144
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_9

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_a
    move v6, v10

    .line 152
    goto :goto_7

    .line 153
    :cond_b
    const-string v3, "Unable to obtain package certificate history."

    .line 154
    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    const-string v3, "GoogleSignatureVerifier"

    .line 162
    .line 163
    const-string v4, "package info is not set correctly"

    .line 164
    .line 165
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_c

    .line 169
    .line 170
    sget-object v1, Lcom/google/android/gms/common/zzn;->a:[Lcom/google/android/gms/common/zzj;

    .line 171
    .line 172
    invoke-static {p0, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    goto :goto_8

    .line 177
    :cond_c
    sget-object v1, Lcom/google/android/gms/common/zzn;->a:[Lcom/google/android/gms/common/zzj;

    .line 178
    .line 179
    aget-object v1, v1, v0

    .line 180
    .line 181
    filled-new-array {v1}, [Lcom/google/android/gms/common/zzj;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {p0, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    :goto_8
    if-eqz p0, :cond_d

    .line 190
    .line 191
    :goto_9
    return v2

    .line 192
    :cond_d
    :goto_a
    return v0
.end method

.method public static varargs b(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const-string p0, "GoogleSignatureVerifier"

    .line 12
    .line 13
    const-string p1, "Package has more than one signature."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzk;

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object p0, p0, v2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 31
    .line 32
    .line 33
    :goto_0
    array-length p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    aget-object p0, p1, v2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzj;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    aget-object p0, p1, v2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    return-object v1
.end method
