.class Landroidx/documentfile/provider/TreeDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/Uri;


# virtual methods
.method public final a()Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v7, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    const-string v1, "mime_type"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    const-string v1, "flags"

    .line 22
    .line 23
    const-string v9, "Failed query: "

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v10, 0x0

    .line 30
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v1, v0

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v10, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    :goto_0
    invoke-static {v10}, Landroidx/documentfile/provider/DocumentsContractApi19;->a(Landroid/database/Cursor;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_4

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_1
    const-string v1, "DocumentFile"

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_1
    long-to-int v0, v11

    .line 87
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    and-int/lit8 v1, v0, 0x4

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const-string v1, "vnd.android.document/directory"

    .line 100
    .line 101
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    and-int/lit8 v1, v0, 0x8

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    and-int/2addr p0, v0

    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    :goto_2
    const/4 v7, 0x1

    .line 122
    :cond_5
    :goto_3
    return v7

    .line 123
    :goto_4
    invoke-static {v10}, Landroidx/documentfile/provider/DocumentsContractApi19;->a(Landroid/database/Cursor;)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "_display_name"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "mime_type"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "vnd.android.document/directory"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
