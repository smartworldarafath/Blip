.class public abstract Lcom/google/firebase/platforminfo/LibraryVersionComponent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/firebase/components/Component$Builder;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    new-array v1, p1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v2, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 12
    .line 13
    invoke-direct {p0, v2, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->e:I

    .line 18
    .line 19
    new-instance v1, Ld5;

    .line 20
    .line 21
    invoke-direct {v1, p1, v0}, Ld5;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, v0, Lcom/google/firebase/components/Component$Builder;->e:I

    .line 13
    .line 14
    const-class v1, Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/google/firebase/platforminfo/b;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/platforminfo/b;-><init>(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
