.class public final Lcom/FelpzKeyTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;
.field private final key:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/FelpzKeyTask;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/FelpzKeyTask;->key:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/FelpzKeyTask;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/FelpzKeyValidator;->validate(Ljava/lang/String;)Lorg/json/JSONObject;
    move-result-object v1

    new-instance v2, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v3
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/FelpzKeyTask;->context:Landroid/content/Context;
    new-instance v3, Lcom/FelpzKeyResult;
    invoke-direct {v3, v0, v1}, Lcom/FelpzKeyResult;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return-void
.end method
