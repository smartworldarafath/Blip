.class Landroidx/documentfile/provider/SingleDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/Uri;


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

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
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
