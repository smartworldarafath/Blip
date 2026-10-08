.class public final synthetic Lcom/google/firebase/platforminfo/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/platforminfo/b;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/platforminfo/b;->k:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/platforminfo/b;->k:Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/firebase/platforminfo/b;->j:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
