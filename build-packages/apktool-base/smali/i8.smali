.class public final synthetic Li8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic a:Lcom/google/firebase/FirebaseApp;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8;->a:Lcom/google/firebase/FirebaseApp;

    .line 5
    .line 6
    iput-object p2, p0, Li8;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/firebase/FirebaseApp;->j:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    .line 4
    .line 5
    iget-object v1, p0, Li8;->a:Lcom/google/firebase/FirebaseApp;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, v1, Lcom/google/firebase/FirebaseApp;->d:Lcom/google/firebase/components/ComponentRuntime;

    .line 12
    .line 13
    const-class v3, Lcom/google/firebase/events/Publisher;

    .line 14
    .line 15
    invoke-interface {v1, v3}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/firebase/events/Publisher;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Li8;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "com.google.firebase.common.prefs:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "firebase_data_collection_default_enabled"

    .line 42
    .line 43
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 v3, 0x80

    .line 66
    .line 67
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :catch_0
    :cond_1
    :goto_0
    iput-boolean v4, v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->a:Z

    .line 90
    .line 91
    return-object v0
.end method
