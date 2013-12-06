defmodule Mandrillex.Ips do
  @moduledoc """
  Ips calls for Mandrill.
  """

  @doc """
  Lists your dedicated IPs.
  """
  def list do
    params = [ 
      key: Mandrillex.key
    ]
    Mandrillex.request("ips/list", params)
  end

  @doc """
  Retrieves information about a single 
  dedicated ip.
  """
  def info(ip) do
    params = [ 
      key: Mandrillex.key,
      ip: ip 
    ]
    Mandrillex.request("ips/info", params)
  end
  
  @doc """
  Requests an additional dedicated IP for your 
  account. Accounts may have one outstanding 
  request at any time, and provisioning 
  requests are processed within 24 hours.
  """
  def provision(warmup, pool) do
    params = [ 
      key: Mandrillex.key,
      warmup: warmup,
      pool: pool 
    ]
    Mandrillex.request("ips/provision", params)
  end
  
  @doc """
  Begins the warmup process for a dedicated IP. 
  During the warmup process, Mandrill will 
  gradually increase the percentage of your 
  mail that is sent over the warming-up IP, 
  over a period of roughly 30 days. The rest of 
  your mail will be sent over shared IPs or 
  other dedicated IPs in the same pool.
  """
  def start_warmup(ip) do
    params = [ 
      key: Mandrillex.key,
      ip: ip 
    ]
    Mandrillex.request("ips/start-warmup", params)
  end
  
  @doc """
  Cancels the warmup process for a dedicated IP.
  """
  def cancel_warmup(ip) do
    params = [ 
      key: Mandrillex.key,
      ip: ip 
    ]
    Mandrillex.request("ips/cancel-warmup", params)
  end
  
  @doc """
  Moves a dedicated IP to a different pool.
  """
  def set_pool(ip, pool, create_pool) do
    params = [ 
      key: Mandrillex.key,
      ip: ip,
      pool: pool,
      create_pool: create_pool
    ]
    Mandrillex.request("ips/set-pool", params)
  end
  
  @doc """
  Deletes a dedicated IP. This is permanent and 
  cannot be undone.
  """
  def delete(ip) do
    params = [ 
      key: Mandrillex.key,
      ip: ip 
    ]
    Mandrillex.request("ips/delete", params)
  end
  
  @doc """
  Lists your dedicated IP pools.
  """
  def list_pools do
    params = [ 
      key: Mandrillex.key
    ]
    Mandrillex.request("ips/list-pools", params)
  end
  
  @doc """
  Describes a single dedicated IP pool.
  """
  def pool_info(pool) do
    params = [ 
      key: Mandrillex.key,
      pool: pool 
    ]
    Mandrillex.request("ips/pool-info", params)
  end
  
  @doc """
  Creates a pool and returns it. If a pool 
  already exists with this name, no action will 
  be performed.
  """
  def create_pool(pool) do
    params = [ 
      key: Mandrillex.key,
      pool: pool 
    ]
    Mandrillex.request("ips/create-pool", params)
  end
  
  @doc """
  Deletes a pool. A pool must be empty before 
  you can delete it, and you cannot delete your 
  default pool.
  """
  def delete_pool(pool) do
    params = [ 
      key: Mandrillex.key,
      pool: pool 
    ]
    Mandrillex.request("ips/delete-pool", params)
  end
  
  @doc """
  Tests whether a domain name is valip for use as 
  the custom reverse DNS for a dedicated IP.
  """
  def check_custom_dns(ip, domain) do
    params = [ 
      key: Mandrillex.key,
      ip: ip ,
      domain: domain
    ]
    Mandrillex.request("ips/check-custom-dns", params)
  end
  
  @doc """
  Configures the custom DNS name for a dedicated 
  IP.
  """
  def set_custom_dns(ip, domain) do
    params = [ 
      key: Mandrillex.key,
      ip: ip,
      domain: domain
    ]
    Mandrillex.request("ips/set-custom-dns", params)
  end
end